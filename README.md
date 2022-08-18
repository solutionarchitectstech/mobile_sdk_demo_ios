# mobile_sdk_demo project
This iOS (Swift) demo project covers all usages of the library [solutionarchitectstech:mobile_sdk_release_ios](https://github.com/solutionarchitectstech/mobile_sdk_release_ios)

## Requirements
Swift 5 and above
iOS 14 and above

## 1. Add the dependency to your project

SAAdvertisingSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SAAdvertisingSDK'
```

## 2. initialization of the library
```swift
TechAdvertising.initialize(storeUrl: String,
                                  apiKey: String,
                                  apiSecret: String,
                                  partnerId: String,
                                  tagId: String? = nil,
                                  uid: String,
                                  hashType: HashType = HashType.SHA_1,
                                  requestType: RequestType = RequestType.POST,
                                  enableExternalExceptionHandler: Bool = false,
                                  enableCompression: Bool = false,
                                  baseUrl: String? = nil,
                                  postUrl: String? = nil,
                                  getUrl: String? = nil,
                                  trackingSdkBaseUrl: String? = nil,
                                  enableLogsHandler: Bool = false) 
```
[Look at the example here](https://github.com/solutionarchitectstech/mobile_sdk_demo_ios/blob/8ef656d56fda0384b92aedecfe7347363a90f8bc/SAAdvertisingSDK/AppDelegate.swift#L18)

## 3. banner view and the fullscreen mode
![banner-view](/readme_content/banner.gif)
![fullscreen](/readme_content/fullscreen.gif)

```swift
 @IBOutlet weak var bannerView: BannerView!
 bannerView.loadData(model: BannerModel(
                refresh: 0,
                timeout: 0,
                placementId: 4477551,
                closeButtonType: CloseButtonType.COUNTDOWN,
                sizes: [Size(width: 300, height: 250)]
        ))
bannerView.delegate = self

extension YourHolderClass: BannerViewDelegate {
    public func onLoadDataSuccess(placementId: String) {
        print("onLoadDataSuccess: \(placementId)")
    }

    public func onLoadDataFail(placementId: String, reason: String) {
        print("onLoadDataFail: \(placementId), reason: \(reason)")
    }

    public func onLoadWebContentSuccess(placementId: String) {
        print("onLoadWebContentSuccess: \(placementId)")
    }

    public func onLoadWebContentFail(placementId: String, reason: String) {
        print("onLoadWebContentFail: \(placementId), reason: \(reason)")
    }

    public func onCloseClick(placementId: String) {
        print("onCloseClick: \(placementId)")
    }
}
```
[Look at the example here](https://github.com/solutionarchitectstech/mobile_sdk_demo_ios/blob/8ef656d56fda0384b92aedecfe7347363a90f8bc/SAAdvertisingSDK/screens/banner/SDKBannerViewController.swift#L19)









