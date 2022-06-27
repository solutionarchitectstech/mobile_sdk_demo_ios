//
//  FullscreenViewController.swift
//  SAAdvertisingSDK_Example
//
//  Created by Maksim on 26.06.2022.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit
import SAAdvertisingSDK

class FullscreenViewController: UIViewController {

    @IBOutlet weak var bannerView: BannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView.loadData(model: BannerModel(
                refresh: 0,
                timeout: 0,
                placementId: 4477551,
                closeButtonType: CloseButtonType.COUNTDOWN,
                sizes: [Size(width: 300, height: 250)]
        ))
        bannerView.onClose = { [weak self] in
            self?.dismiss(animated: true)
        }
    }
}
