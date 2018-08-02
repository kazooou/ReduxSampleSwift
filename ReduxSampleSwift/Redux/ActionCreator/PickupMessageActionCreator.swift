//
//  PickupMessageActionCreator.swift
//  ReduxSampleSwift
//
//  Created by 酒井文也 on 2018/08/03.
//  Copyright © 2018年 酒井文也. All rights reserved.
//

import Foundation
import ReSwift

struct PickupMessageActionCreator {}

extension PickupMessageActionCreator {

    // ピックアップメッセージを取得する
    static func fetchGourmetShopList() {

        // ピックアップメッセージのAPIから全件情報を取得する
        APIManagerForPickupMessage.shared.getPickupMessageList()
            .done { messageJSON in

                // 成功時: 取得したJSONを解析したものを配列にしたものを引数に渡してアクションの実行
                let pickupMessageList = PickupMessage.getPickupMessagesBy(json: messageJSON)
                appStore.dispatch(PickupMessageState.pickupMessageAction.setPickupMessage(pickupMessage: pickupMessageList))
 
            }.catch { error in

                // 失敗時: 空配列を引数に渡してアクションの実行
                appStore.dispatch(PickupMessageState.pickupMessageAction.setPickupMessage(pickupMessage: []))
        }
    }
}
