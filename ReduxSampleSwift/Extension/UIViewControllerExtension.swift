//
//  UIViewControllerExtension.swift
//  ReduxSampleSwift
//
//  Created by 酒井文也 on 2017/12/28.
//  Copyright © 2017年 酒井文也. All rights reserved.
//

import Foundation
import UIKit

// UIViewControllerの拡張
extension UIViewController {

    // この画面のナビゲーションバーを設定するメソッド
    public func setupNavigationBarTitle(_ title: String) {

        // NavigationControllerのデザイン調整を行う
        var attributes = [NSAttributedStringKey : Any]()
        attributes[NSAttributedStringKey.font]             = UIFont(name: AppConstants.FONT_NAME, size: 14.0)
        attributes[NSAttributedStringKey.foregroundColor]  = UIColor.init(code: "#333333")

        self.navigationController!.navigationBar.tintColor           = UIColor.init(code: "#DDDDDD")
        self.navigationController!.navigationBar.titleTextAttributes = attributes

        //タイトルを入れる
        self.navigationItem.title = title
    }

    // 戻るボタンの「戻る」テキストを削除した状態にするメソッド
    public func removeBackButtonText() {
        let backButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationController!.navigationBar.tintColor = UIColor.white
        self.navigationItem.backBarButtonItem = backButtonItem
    }
}
