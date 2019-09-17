```json
{
    "platformName": "iOS",
    "platformVersion": "13.0",
    "deviceName": "iPhone Xs",
    "automationName": "XCUITest",
    "bundleId": "com.tuya.smart",
    "app": "/Users/heminwon/Library/Developer/Xcode/DerivedData/│ TuyaSmartPublic-hggldkkokenozigbqsnyofuwkbqm/Build/Products/Debug-iphonesimulator/TuyaSmartPublic.app",
    "processArguments": "{\"args\": [\"disable_animation\", \"ui_auto_test\"]}"
}
```

```json
{
    "deviceName": "Hemin-iPhone",
    "platformName": "iOS",
    "platformVersion": "12.4.1",
    "automationName": "XCUITest",
    "bundleId": "com.tuya.smart.Hoc",
    "udid": "fa8b03530426444eddaa9d05b7c9d91062c4baff",
    "processArguments": "{\"args\": [\"disable_animation\", \"ui_auto_test\"]}"
}
```

```json
{
    "deviceName": "Hemin-iPhone",
    "platformName": "iOS",
    "platformVersion": "12.4.1",
    "automationName": "XCUITest",
    "bundleId": "com.tuya.smart.Hoc",
    "udid": "fa8b03530426444eddaa9d05b7c9d91062c4baff"
}
```

// 测试测试
```json
{
    "deviceName": "ABC8P",
    "platformName": "iOS",
    "platformVersion": "11.4.1",
    "automationName": "XCUITest",
    "bundleId": "com.tuya.smart.Hoc",
    "xcodeOrgId":"H68CS7T6VG",
    "xcodeSigningId":"iPhone Developer",
    "udid": "b3dec0f96c15f1162d1d95788e69dfe55c28faf2"
}
```

```json
{
    "deviceName": "ABC8P",
    "platformName": "iOS",
    "platformVersion": "11.4.1",
    "automationName": "XCUITest",
    "bundleId": "com.tuya.smart.Hoc",
    "udid": "b3dec0f96c15f1162d1d95788e69dfe55c28faf2",
    "processArguments": "{\"args\": [\"disable_animation\", \"ui_auto_test\"]}"
}
```

```json
{
    "deviceName": "Hemin-iPhone",
    "platformName": "iOS",
    "platformVersion": "12.4.1",
    "automationName": "XCUITest",
    "bundleId": "com.tuya.smart.Hoc",
    "xcodeOrgId": "H68CS7T6VG",
    "xcodeSigningId":"iPhone Developer",
    "updatedWDABundleId":"com.facebook.WebDriverAgentRunner",
    "udid": "fa8b03530426444eddaa9d05b7c9d91062c4baff",
    "processArguments": "{\"args\": [\"disable_animation\", \"ui_auto_test\"]}"
}
```

```
An unknown server-side error occurred while processing the command. Original error: Unable to launch WebDriverAgent because of xcodebuild failure: xcodebuild failed with code 65 xcodebuild error message: 2019-09-12 10:35:44.711 xcodebuild[13938:46514] Error Domain=NSCocoaErrorDomain Code=260 "The file “WebDriverAgentRunner-Runner.app” couldn’t be opened because there is no such file." UserInfo={NSFilePath=/Users/heminwon/Library/Developer/Xcode/DerivedData/WebDriverAgent-dikkwtrisltbeobjmfvpthwwekvs/Build/Products/Debug-iphoneos/WebDriverAgentRunner-Runner.app, NSUnderlyingError=0x7ff10b703a70 {Error Domain=NSPOSIXErrorDomain Code=2 "No such file or directory"}} Testing failed: An empty identity is not valid when signing a binary for the product type 'UI Testing Bundle'. (in target 'WebDriverAgentRunner') WebDriverAgentRunner: WebDriverAgentRunner-Runner.app encountered an error (Failed to install or launch the test runner. (Underlying error: The file “WebDriverAgentRunner-Runner.app” couldn’t be opened because there is no such file. The file doesn’t exist. (Underlying error: The operation couldn’t be completed. No such file or directory))) Test session results and logs: /Users/heminwon/Library/Developer/Xcode/DerivedData/WebDriverAgent-dikkwtrisltbeobjmfvpthwwekvs/Logs/Test/Test-WebDriverAgentRunner-2019.09.12_10-35-42-+0800.xcresult ** TEST EXECUTE FAILED ** Testing started on 'Hemin-iPhone'. Make sure you follow the tutorial at https://github.com/appium/appium-xcuitest-driver/blob/master/docs/real-device-config.md. Try to remove the WebDriverAgentRunner application from the device if it is installed and reboot the device.
```

com.heminwon.WebDriverAgentRunner

An unknown server-side error occurred while processing the command. Original error: Unable to launch WebDriverAgent because of xcodebuild failure: xcodebuild failed with code 65 xcodebuild error message: 2019-09-12 11:10:57.310 xcodebuild[42503:129470] iPhoneConnect: 📱<DVTiOSDevice (0x7f944d750b10), 6s, iPhone, 13.1 (17A5837a), 191c7b9a288ff8703b552c002f1f829836f26746> unable to mount developer disk image, (Error Domain=com.apple.dtdevicekit Code=601 "Could not locate device support files." UserInfo={DeviceType=iPhone8,1, NSLocalizedDescription=Could not locate device support files., NSLocalizedRecoverySuggestion=This iPhone 6s is running iOS 13.1 (17A5837a), which may not be supported by this version of Xcode.}) { DeviceType = "iPhone8,1"; NSLocalizedDescription = "Could not locate device support files."; NSLocalizedRecoverySuggestion = "This iPhone 6s is running iOS 13.1 (17A5837a), which may not be supported by this version of Xcode."; } 2019-09-12 11:10:58.519 xcodebuild[42503:129447] iPhoneConnect: 📱<DVTiOSDevice (0x7f944d750b10), 6s, iPhone, 13.1 (17A5837a), 191c7b9a288ff8703b552c002f1f829836f26746> unable to mount developer disk image, (Error Domain=com.apple.dtdevicekit Code=601 "Could not locate device support files." UserInfo={DeviceType=iPhone8,1, NSLocalizedDescription=Could not locate device support files., NSLocalizedRecoverySuggestion=This iPhone 6s is running iOS 13.1 (17A5837a), which may not be supported by this version of Xcode.}) { DeviceType = "iPhone8,1"; NSLocalizedDescription = "Could not locate device support files."; NSLocalizedRecoverySuggestion = "This iPhone 6s is running iOS 13.1 (17A5837a), which may not be supported by this version of Xcode."; } 2019-09-12 11:11:16.464625+0800 WebDriverAgentRunner-Runner[10204:1994530] Exiting due to IDE disconnection. 2019-09-12 11:11:36.454 xcodebuild[42503:127529] [MT] IDETestOperationsObserverDebug: 80.933 elapsed -- Testing started completed. 2019-09-12 11:11:36.454 xcodebuild[42503:127529] [MT] IDETestOperationsObserverDebug: 0.000 sec, +0.000 sec -- start 2019-09-12 11:11:36.455 xcodebuild[42503:127529] [MT] IDETestOperationsObserverDebug: 80.933 sec, +80.933 sec -- end Testing failed: No profiles for 'com.heminwon.WebDriverAgentRunner' were found: Xcode couldn't find any iOS App Development provisioning profiles matching 'com.heminwon.WebDriverAgentRunner'. Automatic signing is disabled and unable to generate a profile. To enable automatic signing, pass -allowProvisioningUpdates to xcodebuild. (in target 'WebDriverAgentRunner') No signing certificate "iOS Development" found: No "iOS Development" signing certificate matching team ID "H68CS7T6VG" with a private key was found. (in target 'WebDriverAgentLib') WebDriverAgentRunner: WebDriverAgentRunner-Runner.app (10204) encountered an error (Early unexpected exit, operation never finished bootstrapping - no restart will be attempted. (Underlying error: Test runner exited before starting test execution.)) Test session results and logs: /Users/heminwon/Library/Developer/Xcode/DerivedData/WebDriverAgent-dikkwtrisltbeobjmfvpthwwekvs/Logs/Test/Test-WebDriverAgentRunner-2019.09.12_11-10-14-+0800.xcresult ** TEST EXECUTE FAILED ** Testing started on 'Hemin-iPhone'. Make sure you follow the tutorial at https://github.com/appium/appium-xcuitest-


An unknown server-side error occurred while processing the command. Original error: Unable to start WebDriverAgent session because of xcodebuild failure: An unknown server-side error occurred while processing the command. Original error: Could not proxy command to remote server. Original error: Error: read ECONNRESET Make sure you follow the tutorial at https://github.com/appium/appium-xcuitest-driver/blob/master/docs/real-device-config.md. Try to remove the WebDriverAgentRunner application from the device if it is installed and reboot the device.


An unknown server-side error occurred while processing the command. Original error: Unable to start WebDriverAgent session because of xcodebuild failure: A new session could not be created. Details: 'capabilities' is mandatory to create a new session Make sure you follow the tutorial at https://github.com/appium/appium-xcuitest-driver/blob/master/docs/real-device-config.md. Try to remove the WebDriverAgentRunner application from the device if it is installed and reboot the device.