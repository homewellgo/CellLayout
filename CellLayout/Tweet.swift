//
//  Tweet.swift
//  CellLayout
//
//  Created by PB2 on 2017/10/11.
//  Copyright © 2017年 homewellgo. All rights reserved.
//

import UIKit

class Tweet: NSObject {
    
    var iconImage: UIImage?
    var name = ""
    var time = ""
    var tweet = ""
    var tweetImage: UIImage?
    var category = ""
    
    
    
    
    
    static let images = [#imageLiteral(resourceName: "img1"), #imageLiteral(resourceName: "img2"), #imageLiteral(resourceName: "img3"), #imageLiteral(resourceName: "img4"), #imageLiteral(resourceName: "img5")]
    static let names = ["Asher", "Bob", "Charlie", "Delta", "Etham", ]
    static let times = ["17:00", "3:00", "19:00", "24:00", "1:00", ]
    static let tweets = [
        "スターバックスでアイスコーヒーを極めてみる?!アイスのカフェ アメリカーノにこんなオーダー方法があったとは!",
        "おはようございます。\nたまにすごく甘いもの食べたくなって、甘さに後悔するのですが\nスタバの新作、ざくざくが美味しくて美味しかったです！笑ただ、店内寒くてフラペなので凍えました。\n適度に糖分摂取して、身体冷やさないよう気をつけて…今日も稽古行ってきます！沢山悩むぞー！おー",
        "おはようございます。週明けの朝は、ダブルトールラテでシャキッとした気分でスタートしませんか😉",
        "今週はお盆休みを過ごされた方も多かったかもしれませんね。合間の休憩に、ひんやりとしたフラペチーノ®でゆったりとしたひとときを過ごしませんか。\nそれでは、よい週末を🙂",
        "カスタマイズで、特別感たっぷりのフラペチーノ®に出会いませんか。トロピカルでクリーミーな一杯が夏のおでかけを盛り上げてくれそうです。\nマンゴー パッションティー フラペチーノ®\nノンティー＋ヨーグルト＋ホイップクリーム（＋100円）",
        ]
    static let tweetImages = [nil, #imageLiteral(resourceName: "tm1"), nil, nil, #imageLiteral(resourceName: "tm2")]
    static let categories = ["TypeA", "TypeB", "TypeC", "TypeD", "TypeXYZ"]
    
    static var all: [Tweet]  {
        
        var tweets: [Tweet] = []
        
        for i in 0...4 {
            let t = Tweet()
            t.iconImage = images[i]
            t.name = names[i]
            t.time = times[i]
            t.tweet = self.tweets[i]
            t.tweetImage = tweetImages[i]
            t.category = categories[i]
            
            tweets.append( t )
        }
        
        return tweets
    }
}
