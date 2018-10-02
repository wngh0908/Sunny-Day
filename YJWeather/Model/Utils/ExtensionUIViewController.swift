//
//  ExtensionUIViewController.swift
//  YJWeather
//
//  Created by 최영준 on 02/10/2018.
//  Copyright © 2018 최영준. All rights reserved.
//

import UIKit

extension UIViewController {
    func alert(_ message: String, completion: (() -> Void)?) {
        // 메인 스레드에서 실행되도록
        DispatchQueue.main.async {
            let alert = UIAlertController().createAlertWithOkAction(message, completion: completion)
            self.present(alert, animated: false)
        }
    }
    func alertWithOkCancel(_ message: String, completion: (() -> Void)?) {
        // 메인 스레드에서 실행되도록
        DispatchQueue.main.async {
            let alert = UIAlertController().createAlertWithOkCancelAction(message, completion: completion)
            self.present(alert, animated: false)
        }
    }
}

