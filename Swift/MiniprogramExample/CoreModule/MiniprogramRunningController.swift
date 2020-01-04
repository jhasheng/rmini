//
//  CoreController.swift
//  MiniprogramExample
//
//  Created by 欧阳鑫 on 2019/12/25.
//  Copyright © 2019 欧阳鑫. All rights reserved.
//

import UIKit
import Foundation
import SDDownloadManager
import SSZipArchive
import PKHUD
import JavaScriptCore

class MiniprogramRunningController {
    
    
    /// APPID 作为目录
    var appId = "mock_appid"
    
    /// 小程序解压s后存在的临时目录
    var tempAppDir: String {
        return AppConfig.tempMiniprogramDir.appending(self.appId);
    }
    
    /// 小程序的目录
    var appDir: String {
        return AppConfig.miniprogramDir.appending(self.appId);
    }
    
    func download(_ pkgURL: URL, callback callbackBlock: @escaping (_ error: Error?, _ pkgLocalURL: URL?) -> Void) {
        let fileName = UUID().uuidString.appending(".zip")
        _ = SDDownloadManager.shared.downloadFile(withRequest: URLRequest(url: pkgURL), withName: fileName) { (err, tempURL) in
            if err != nil {
                callbackBlock(err, nil)
                return
            }
            callbackBlock(nil, tempURL)
        }
    }
    
    /// 运行小程序
    /// - Parameter pkgURL: 小程序包地址
    func run(_ appId: String, _ pkgURL: URL) {
        self.appId = appId
        
        // 通过某种手段用 appId 换取下载地址
        download(pkgURL) { (err, localURL) in
            if err != nil {
                HUD.flash(.label("下载小程序失败"), delay: 2.0)
                logger.error(err)
                return
            }
            
            // 解压小程序
            do {
                try SSZipArchive.unzipFile(atPath: localURL!.path, toDestination: AppConfig.tempMiniprogramDir, overwrite: true, password: nil)
            } catch {
                HUD.flash(.label("解包小程序失败"), delay: 2.0)
                logger.error(error.localizedDescription)
                return
            }
            
            var err: Error? = nil;
            // 清空原来的页面
            fs.unlink(file: self.appDir, error: &err)
            fs.mkDir(path: self.appDir, error: &err)
            // 构建&移动到正式目录
            guard let fileList = fs.readDir(path: self.tempAppDir, error: &err) else {
                HUD.flash(.label("解析小程序异常"), delay: 2.0)
                logger.error(err?.localizedDescription ?? "解析小程序异常")
                return
            }
            
            var buildError: Error? = nil;
            print(fileList)
            for fileName in fileList {
                let filePath = self.tempAppDir.appending("/").appending(fileName);
                if fileName.hasSuffix(".js") {
                    // TODO: 移动到指定目录
                    fs.mv(at: filePath, to: self.appDir.appending("/").appending(fileName), error: &buildError)
                    continue;
                }
                
                var fileContent = try! String(contentsOfFile: filePath);
                // 匹配出所有的 rpx, 构建后移动到指定目录
                let rpxs = fileContent.matches("[0-9]+(?:[.,][0-9]+)*rpx");
                for rpxUnit in rpxs {
                    let val = Float(rpxUnit.dropLast(3)) ?? 0;
                    // 替换 rpx
                    fileContent = fileContent.replacingOccurrences(of: rpxUnit, with: String(val / 750 * Float(System.screenWidth)) + "px");
                    // 替换library
                    fileContent = fileContent.replacingOccurrences(of: "<%VUE%>", with: AppConfig.libraryDir.appending("vue.js"))
                    fileContent = fileContent.replacingOccurrences(of: "<%WEBCOMPONENT%>", with: AppConfig.libraryDir.appending("webcomponent.js"))
                    fs.write(file: self.appDir.appending("/").appending(fileName), data: fileContent.data(using: .utf8)!, error: &buildError)
                }
            }
            // 运行小程序
            MiniprogramShareController.shared.launchApp(appId: appId)
        }
    }
}
