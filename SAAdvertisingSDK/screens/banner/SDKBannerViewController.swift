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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
