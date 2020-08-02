//
//  Const.swift
//  MiniprogramExample
//
//  Created by 欧阳鑫 on 2019/12/25.
//  Copyright © 2019 欧阳鑫. All rights reserved.
//

import Foundation
import UIKit

enum System {
    static let homeDirectory = NSHomeDirectory()
    static let tempDirectory = NSTemporaryDirectory()
    static let screenBounds = UIScreen.main.bounds
    static let screenSize = UIScreen.main.bounds.size
    static let bundlePath = Bundle.main.bundlePath
    static let screenWidth = System.screenSize.width
    static let screenHeight = System.screenSize.height
}


enum AppConfig {
    static let miniprogramDir = System.homeDirectory.appending("/Documents/miniprogram/")
    static let libraryDir = System.homeDirectory.appending("/Documents/library/")
    static let tempMiniprogramDir = System.tempDirectory.appending("miniprogram/")
}

enum InvokeJSCoreType: Int {
    //    * 1. 调用 Page 的生命周期
    case callPageLifecycle = 1
    // * 2. 调用 App 的生命周期
    case callLifecycle = 2
    // * 3. 调用回调函数
    case  callCallback = 3
    // * 4. 进入路由
    case  callPushRouter = 4
    // * 5. 退出路由
    case  callPopRouter = 5
    // * 6. 初始化 Page
    case  callInitial = 6
    // * 7. 初始化 Page
    case  callPageMethod = 7
}

enum WebviewInvokeNative: Int {
    case log = 0
    case lifecycle = 1
    case event = 2
}

enum PageLifecycle {
    case onLoad
    case onShow
    case onReady
    case onHide
    case onUnload
}

enum InvokeNativeMethod: String {
    // 内部 API
    case setData = "setData"
    case launch = "launch"
    case console = "console"
    
    // 处理常用的 API
    // login getStorageSync setStorageSync getSetting getUserInfo navigateTo navigateBack
    
    // 微信 API
    case drawCanvas = "drawCanvas"
    case createContext = "createContext"
    case createCanvasContext = "createCanvasContext"
    case canvasToTempFilePath = "canvasToTempFilePath"
    case canvasGetImageData = "canvasGetImageData"
    case canvasPutImageData = "canvasPutImageData"
    case createOffscreenCanvas = "createOffscreenCanvas"
    case getShareInfo = "getShareInfo"
    case pageScrollTo = "pageScrollTo"
    case chooseInvoiceTitle = "chooseInvoiceTitle"
    case chooseInvoice = "chooseInvoice"
    case arrayBufferToBase64 = "arrayBufferToBase64"
    case base64ToArrayBuffer = "base64ToArrayBuffer"
    case openSetting = "openSetting"
    case getExtConfig = "getExtConfig"
    case chooseMedia = "chooseMedia"
    case chooseMultiMedia = "chooseMultiMedia"
    case chooseMessageFile = "chooseMessageFile"
    case chooseWeChatContact = "chooseWeChatContact"
    case uploadEncryptedFileToCDN = "uploadEncryptedFileToCDN"
    case onUploadEncryptedFileToCDNProgress = "onUploadEncryptedFileToCDNProgress"
    case showShareMenu = "showShareMenu"
    case hideShareMenu = "hideShareMenu"
    case updateShareMenu = "updateShareMenu"
    case shareAppMessageForFakeNative = "shareAppMessageForFakeNative"
    case openUrl = "openUrl"
    case setNavigationBarColor = "setNavigationBarColor"
    case setNavigationBarAlpha = "setNavigationBarAlpha"
    case vibrateShort = "vibrateShort"
    case vibrateLong = "vibrateLong"
    case getSetting = "getSetting"
    case checkIsSupportFacialRecognition = "checkIsSupportFacialRecognition"
    case startFacialRecognitionVerify = "startFacialRecognitionVerify"
    case startFacialRecognitionVerifyAndUploadVideo = "startFacialRecognitionVerifyAndUploadVideo"
    case startCustomFacialRecognitionVerify = "startCustomFacialRecognitionVerify"
    case startCustomFacialRecognitionVerifyAndUploadVideo = "startCustomFacialRecognitionVerifyAndUploadVideo"
    case sendBizRedPacket = "sendBizRedPacket"
    case sendGoldenRedPacket = "sendGoldenRedPacket"
    case openGoldenRedPacketDetail = "openGoldenRedPacketDetail"
    case addPhoneContact = "addPhoneContact"
    case setScreenBrightness = "setScreenBrightness"
    case getScreenBrightness = "getScreenBrightness"
    case getWeRunData = "getWeRunData"
    case uploadWeRunData = "uploadWeRunData"
    case addWeRunData = "addWeRunData"
    case canIUse = "canIUse"
    case setPageStyle = "setPageStyle"
    case triggerGettingWidgetData = "triggerGettingWidgetData"
    case navigateToMiniProgram = "navigateToMiniProgram"
    case navigateToMiniProgramDirectly = "navigateToMiniProgramDirectly"
    case navigateToDevMiniProgram = "navigateToDevMiniProgram"
    case navigateBackMiniProgram = "navigateBackMiniProgram"
    case launchMiniProgram = "launchMiniProgram"
    case launchApplicationDirectly = "launchApplicationDirectly"
    case launchApplicationForNative = "launchApplicationForNative"
    case setNavigationBarRightButton = "setNavigationBarRightButton"
    case onTapNavigationBarRightButton = "onTapNavigationBarRightButton"
    case setTopBarText = "setTopBarText"
    case setTabBarBadge = "setTabBarBadge"
    case removeTabBarBadge = "removeTabBarBadge"
    case showTabBarRedDot = "showTabBarRedDot"
    case hideTabBarRedDot = "hideTabBarRedDot"
    case showTabBar = "showTabBar"
    case hideTabBar = "hideTabBar"
    case setTabBarStyle = "setTabBarStyle"
    case setTabBarItem = "setTabBarItem"
    case setBackgroundColor = "setBackgroundColor"
    case setBackgroundTextStyle = "setBackgroundTextStyle"
    case setEnableDebug = "setEnableDebug"
    case captureScreen = "captureScreen"
    case onUserCaptureScreen = "onUserCaptureScreen"
    case offUserCaptureScreen = "offUserCaptureScreen"
    case setKeepScreenOn = "setKeepScreenOn"
    case checkIsSupportSoterAuthentication = "checkIsSupportSoterAuthentication"
    case startSoterAuthentication = "startSoterAuthentication"
    case checkIsSoterEnrolledInDevice = "checkIsSoterEnrolledInDevice"
    case openDeliveryList = "openDeliveryList"
    case navigateBackH5 = "navigateBackH5"
    case openBusinessView = "openBusinessView"
    case navigateBackApplication = "navigateBackApplication"
    case navigateBackNative = "navigateBackNative"
    case reportIDKey = "reportIDKey"
    case reportKeyValue = "reportKeyValue"
    case setNavigationBarTitle = "setNavigationBarTitle"
    case showNavigationBarLoading = "showNavigationBarLoading"
    case hideNavigationBarLoading = "hideNavigationBarLoading"
    case hideHomeButton = "hideHomeButton"
    case startPullDownRefresh = "startPullDownRefresh"
    case stopPullDownRefresh = "stopPullDownRefresh"
    case operateWXData = "operateWXData"
    case getOpenDeviceId = "getOpenDeviceId"
    case getMenuButtonBoundingClientRect = "getMenuButtonBoundingClientRect"
    case getSelectedTextRange = "getSelectedTextRange"
    case openBluetoothAdapter = "openBluetoothAdapter"
    case closeBluetoothAdapter = "closeBluetoothAdapter"
    case getBluetoothAdapterState = "getBluetoothAdapterState"
    case onBluetoothAdapterStateChange = "onBluetoothAdapterStateChange"
    case startBluetoothDevicesDiscovery = "startBluetoothDevicesDiscovery"
    case stopBluetoothDevicesDiscovery = "stopBluetoothDevicesDiscovery"
    case getBluetoothDevices = "getBluetoothDevices"
    case getConnectedBluetoothDevices = "getConnectedBluetoothDevices"
    case createBLEConnection = "createBLEConnection"
    case closeBLEConnection = "closeBLEConnection"
    case getBLEDeviceServices = "getBLEDeviceServices"
    case getBLEDeviceCharacteristics = "getBLEDeviceCharacteristics"
    case notifyBLECharacteristicValueChanged = "notifyBLECharacteristicValueChanged"
    case notifyBLECharacteristicValueChange = "notifyBLECharacteristicValueChange"
    case readBLECharacteristicValue = "readBLECharacteristicValue"
    case writeBLECharacteristicValue = "writeBLECharacteristicValue"
    case onBluetoothDeviceFound = "onBluetoothDeviceFound"
    case onBLEConnectionStateChanged = "onBLEConnectionStateChanged"
    case onBLEConnectionStateChange = "onBLEConnectionStateChange"
    case onBLECharacteristicValueChange = "onBLECharacteristicValueChange"
    case startBeaconDiscovery = "startBeaconDiscovery"
    case stopBeaconDiscovery = "stopBeaconDiscovery"
    case getBeacons = "getBeacons"
    case onBeaconUpdate = "onBeaconUpdate"
    case offBeaconUpdate = "offBeaconUpdate"
    case onBeaconServiceChange = "onBeaconServiceChange"
    case offBeaconServiceChange = "offBeaconServiceChange"
    case startWifi = "startWifi"
    case stopWifi = "stopWifi"
    case getWifiList = "getWifiList"
    case getConnectedWifi = "getConnectedWifi"
    case connectWifi = "connectWifi"
    case presetWifiList = "presetWifiList"
    case setWifiList = "setWifiList"
    case onGetWifiList = "onGetWifiList"
    case onWifiConnected = "onWifiConnected"
    case onEvaluateWifi = "onEvaluateWifi"
    case getHCEState = "getHCEState"
    case startHCE = "startHCE"
    case stopHCE = "stopHCE"
    case sendHCEMessage = "sendHCEMessage"
    case onHCEMessage = "onHCEMessage"
    case offHCEMessage = "offHCEMessage"
    case startLocalServiceDiscovery = "startLocalServiceDiscovery"
    case stopLocalServiceDiscovery = "stopLocalServiceDiscovery"
    case onLocalServiceFound = "onLocalServiceFound"
    case offLocalServiceFound = "offLocalServiceFound"
    case onLocalServiceLost = "onLocalServiceLost"
    case offLocalServiceLost = "offLocalServiceLost"
    case onLocalServiceDiscoveryStop = "onLocalServiceDiscoveryStop"
    case offLocalServiceDiscoveryStop = "offLocalServiceDiscoveryStop"
    case onLocalServiceResolveFail = "onLocalServiceResolveFail"
    case offLocalServiceResolveFail = "offLocalServiceResolveFail"
    case redirectTo = "redirectTo"
    case reLaunch = "reLaunch"
    case navigateTo = "navigateTo"
    case switchTab = "switchTab"
    case navigateBack = "navigateBack"
    case onAppShow = "onAppShow"
    case offAppShow = "offAppShow"
    case onAppHide = "onAppHide"
    case offAppHide = "offAppHide"
    case onError = "onError"
    case offError = "offError"
    case onWindowResize = "onWindowResize"
    case offWindowResize = "offWindowResize"
    case getStorage = "getStorage"
    case setStorage = "setStorage"
    case removeStorage = "removeStorage"
    case clearStorage = "clearStorage"
    case getStorageInfo = "getStorageInfo"
    case getBackgroundFetchData = "getBackgroundFetchData"
    case onBackgroundFetchData = "onBackgroundFetchData"
    case setBackgroundFetchToken = "setBackgroundFetchToken"
    case getBackgroundFetchToken = "getBackgroundFetchToken"
    case request = "request"
    case connectSocket = "connectSocket"
    case closeSocket = "closeSocket"
    case sendSocketMessage = "sendSocketMessage"
    case onSocketOpen = "onSocketOpen"
    case onSocketClose = "onSocketClose"
    case onSocketMessage = "onSocketMessage"
    case onSocketError = "onSocketError"
    case uploadFile = "uploadFile"
    case downloadFile = "downloadFile"
    case addNativeDownloadTask = "addNativeDownloadTask"
    case downloadApp = "downloadApp"
    case installDownloadApp = "installDownloadApp"
    case getAppInstallState = "getAppInstallState"
    case queryDownloadAppTask = "queryDownloadAppTask"
    case cancelDownloadAppTask = "cancelDownloadAppTask"
    case resumeDownloadAppTask = "resumeDownloadAppTask"
    case pauseDownloadAppTask = "pauseDownloadAppTask"
    case onDownloadAppStateChange = "onDownloadAppStateChange"
    case downloadAppForIOS = "downloadAppForIOS"
    case calRqt = "calRqt"
    case secureTunnel = "secureTunnel"
    case chooseImage = "chooseImage"
    case previewImage = "previewImage"
    case getImageInfo = "getImageInfo"
    case saveImageToPhotosAlbum = "saveImageToPhotosAlbum"
    case compressImage = "compressImage"
    case startRecord = "startRecord"
    case stopRecord = "stopRecord"
    case playVoice = "playVoice"
    case pauseVoice = "pauseVoice"
    case stopVoice = "stopVoice"
    case onVoicePlayEnd = "onVoicePlayEnd"
    case chooseVideo = "chooseVideo"
    case saveVideoToPhotosAlbum = "saveVideoToPhotosAlbum"
    case loadFontFace = "loadFontFace"
    case getLocation = "getLocation"
    case openLocation = "openLocation"
    case chooseLocation = "chooseLocation"
    case onLocationChange = "onLocationChange"
    case offLocationChange = "offLocationChange"
    case startLocationUpdateBackground = "startLocationUpdateBackground"
    case startLocationUpdate = "startLocationUpdate"
    case stopLocationUpdate = "stopLocationUpdate"
    case getNetworkType = "getNetworkType"
    case onNetworkStatusChange = "onNetworkStatusChange"
    case offNetworkStatusChange = "offNetworkStatusChange"
    case getSystemInfo = "getSystemInfo"
    case getBatteryInfo = "getBatteryInfo"
    case startAccelerometer = "startAccelerometer"
    case stopAccelerometer = "stopAccelerometer"
    case onAccelerometerChange = "onAccelerometerChange"
    case offAccelerometerChange = "offAccelerometerChange"
    case startCompass = "startCompass"
    case stopCompass = "stopCompass"
    case onCompassChange = "onCompassChange"
    case offCompassChange = "offCompassChange"
    case startDeviceMotionListening = "startDeviceMotionListening"
    case stopDeviceMotionListening = "stopDeviceMotionListening"
    case onDeviceMotionChange = "onDeviceMotionChange"
    case offDeviceMotionChange = "offDeviceMotionChange"
    case startGyroscope = "startGyroscope"
    case stopGyroscope = "stopGyroscope"
    case onGyroscopeChange = "onGyroscopeChange"
    case offGyroscopeChange = "offGyroscopeChange"
    case reportAction = "reportAction"
    case getBackgroundAudioManager = "getBackgroundAudioManager"
    case getRecorderManager = "getRecorderManager"
    case getBackgroundAudioPlayerState = "getBackgroundAudioPlayerState"
    case playBackgroundAudio = "playBackgroundAudio"
    case pauseBackgroundAudio = "pauseBackgroundAudio"
    case seekBackgroundAudio = "seekBackgroundAudio"
    case stopBackgroundAudio = "stopBackgroundAudio"
    case onBackgroundAudioPlay = "onBackgroundAudioPlay"
    case onBackgroundAudioPause = "onBackgroundAudioPause"
    case onBackgroundAudioStop = "onBackgroundAudioStop"
    case joinVoIPChat = "joinVoIPChat"
    case exitVoIPChat = "exitVoIPChat"
    case updateVoIPChatMuteConfig = "updateVoIPChatMuteConfig"
    case onVoIPChatMembersChanged = "onVoIPChatMembersChanged"
    case onVoIPChatSpeakersChanged = "onVoIPChatSpeakersChanged"
    case onVoIPChatInterrupted = "onVoIPChatInterrupted"
    case requestSubscribeMessage = "requestSubscribeMessage"
    case login = "login"
    case checkSession = "checkSession"
    case authorize = "authorize"
    case getUserInfo = "getUserInfo"
    case requestPayment = "requestPayment"
    case verifyPaymentPassword = "verifyPaymentPassword"
    case bindPaymentCard = "bindPaymentCard"
    case requestPaymentToBank = "requestPaymentToBank"
    case requestVirtualPayment = "requestVirtualPayment"
    case openOfflinePayView = "openOfflinePayView"
    case openWCPayCardList = "openWCPayCardList"
    case requestMallPayment = "requestMallPayment"
    case setCurrentPaySpeech = "setCurrentPaySpeech"
    case loadPaySpeechDialectConfig = "loadPaySpeechDialectConfig"
    case faceVerifyForPay = "faceVerifyForPay"
    case openOfficialAccountProfile = "openOfficialAccountProfile"
    case openUserProfile = "openUserProfile"
    case openMiniProgramProfile = "openMiniProgramProfile"
    case openMiniProgramSearch = "openMiniProgramSearch"
    case openMiniProgramHistoryList = "openMiniProgramHistoryList"
    case openMiniProgramStarList = "openMiniProgramStarList"
    case batchGetContactDirectly = "batchGetContactDirectly"
    case preventApplePayUI = "preventApplePayUI"
    case getWxSecData = "getWxSecData"
    case addCard = "addCard"
    case openCard = "openCard"
    case scanCode = "scanCode"
    case openQRCode = "openQRCode"
    case chooseAddress = "chooseAddress"
    case saveFile = "saveFile"
    case openDocument = "openDocument"
    case getSavedFileList = "getSavedFileList"
    case getSavedFileInfo = "getSavedFileInfo"
    case getFileInfo = "getFileInfo"
    case removeSavedFile = "removeSavedFile"
    case getFileSystemManager = "getFileSystemManager"
    case getABTestConfig = "getABTestConfig"
    case chooseContact = "chooseContact"
    case removeUserCloudStorage = "removeUserCloudStorage"
    case setUserCloudStorage = "setUserCloudStorage"
    case makePhoneCall = "makePhoneCall"
    case makeVoIPCall = "makeVoIPCall"
    case onAppRoute = "onAppRoute"
    case onAppRouteDone = "onAppRouteDone"
    case onAppEnterBackground = "onAppEnterBackground"
    case onAppEnterForeground = "onAppEnterForeground"
    case onAppUnhang = "onAppUnhang"
    case onPageReload = "onPageReload"
    case onPageNotFound = "onPageNotFound"
    case offPageNotFound = "offPageNotFound"
    case createAnimation = "createAnimation"
    case createInnerAudioContext = "createInnerAudioContext"
    case getAvailableAudioSources = "getAvailableAudioSources"
    case onAudioInterruptionBegin = "onAudioInterruptionBegin"
    case offAudioInterruptionBegin = "offAudioInterruptionBegin"
    case onAudioInterruptionEnd = "onAudioInterruptionEnd"
    case offAudioInterruptionEnd = "offAudioInterruptionEnd"
    case setInnerAudioOption = "setInnerAudioOption"
    case createAudioContext = "createAudioContext"
    case createVideoContext = "createVideoContext"
    case createMapContext = "createMapContext"
    case createCameraContext = "createCameraContext"
    case createLivePlayerContext = "createLivePlayerContext"
    case createLivePusherContext = "createLivePusherContext"
    case onWebviewEvent = "onWebviewEvent"
    case onNativeEvent = "onNativeEvent"
    case hideKeyboard = "hideKeyboard"
    case onKeyboardHeightChange = "onKeyboardHeightChange"
    case getPublicLibVersion = "getPublicLibVersion"
    case showModal = "showModal"
    case showToast = "showToast"
    case hideToast = "hideToast"
    case showLoading = "showLoading"
    case hideLoading = "hideLoading"
    case showActionSheet = "showActionSheet"
    case showShareActionSheet = "showShareActionSheet"
    case reportAnalytics = "reportAnalytics"
    case reportMonitor = "reportMonitor"
    case getClipboardData = "getClipboardData"
    case setClipboardData = "setClipboardData"
    case createSelectorQuery = "createSelectorQuery"
    case createIntersectionObserver = "createIntersectionObserver"
    case nextTick = "nextTick"
    case updatePerfData = "updatePerfData"
    case traceEvent = "traceEvent"
    case onMemoryWarning = "onMemoryWarning"
    case getUpdateManager = "getUpdateManager"
    case createWorker = "createWorker"
    case voiceSplitJoint = "voiceSplitJoint"
    case uploadSilkVoice = "uploadSilkVoice"
    case downloadSilkVoice = "downloadSilkVoice"
    case getResPath = "getResPath"
    case setResPath = "setResPath"
    case setCookies = "setCookies"
    case getCookies = "getCookies"
    case getLabInfo = "getLabInfo"
    case setLabInfo = "setLabInfo"
    case createUDPSocket = "createUDPSocket"
    case env = "env"
    case error = "error"
    case isSystemError = "isSystemError"
    case isSDKError = "isSDKError"
    case isThirdError = "isThirdError"
    case createRewardedVideoAd = "createRewardedVideoAd"
    case createInterstitialAd = "createInterstitialAd"
    case getLogManager = "getLogManager"
    case getRealtimeLogManager = "getRealtimeLogManager"
    case cloud = "cloud"
    case version = "version"
    case chooseShareGroup = "chooseShareGroup"
    case enterContact = "enterContact"
    case getBaseMethods = "getBaseMethods"
}

