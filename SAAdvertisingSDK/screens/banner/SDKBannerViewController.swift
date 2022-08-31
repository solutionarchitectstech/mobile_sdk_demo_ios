//
//  BannerViewController.swift
//  SAAdvertisingSDK_Example
//
//  Created by Maksim on 20.06.2022.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit
import SAAdvertisingSDK


class SDKBannerViewController: UIViewController {

    @IBOutlet weak var bannerView: BannerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView.loadData(bannerModel: BannerModel(
                refresh: 0,
                timeout: 0,
                placementId: "1",
                closeButtonType: CloseButtonType.VISIBLE,
                sizes: [Size(width: 300, height: 250)]
        ))
        bannerView.delegate = self
    }
}

extension SDKBannerViewController: BannerViewDelegate {
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
        dismiss(animated: true)
    }
}
