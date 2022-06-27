//
//  ViewController.swift
//  SAAdvertisingSDK
//
//  Created by fmaxx on 05/20/2022.
//  Copyright (c) 2022 fmaxx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onBannerViewClick(_ sender: Any) {
        presentViewControllerBy(name: "SDKBannerViewController")
    }

    private func presentViewControllerBy(name: String){
        let storyBoard: UIStoryboard = UIStoryboard(name: name, bundle: nil)
        let bannerViewController = storyBoard.instantiateInitialViewController()
        bannerViewController?.modalPresentationStyle = .fullScreen
        guard let vc = bannerViewController else {
            return
        }
        present(vc, animated: true)
    }

    
    @IBAction func onFullScreenViewClick(_ sender: Any) {
        presentViewControllerBy(name: "FullscreenViewController")
    }
    
}

