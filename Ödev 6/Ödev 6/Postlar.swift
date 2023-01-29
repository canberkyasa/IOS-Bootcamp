//
//  Postlar.swift
//  Ödev 6
//
//  Created by Canberk Yaşa on 28.01.2023.
//

import Foundation

class Postlar {
    
    var twitter_id:String?
    var twitter_handle:String?
    var kac_saat_oldu:String?
    var post:String?
    var begeniSayisi:Int = 0
    var retweetSayisi:Int = 0
    var yorumSayisi:Int = 0
    var resimAdi:String?
    var tBlue:Bool = false
    
    init(twitter_id: String, twitter_handle: String, kac_saat_oldu: String, post: String, begeniSayisi: Int, retweetSayisi: Int, yorumSayisi: Int, resimAdi: String, tBlue: Bool) {
        
        self.twitter_id = twitter_id
        self.twitter_handle = twitter_handle
        self.kac_saat_oldu = kac_saat_oldu
        self.post = post
        self.begeniSayisi = begeniSayisi
        self.retweetSayisi = retweetSayisi
        self.yorumSayisi = yorumSayisi
        self.resimAdi = resimAdi
        self.tBlue = tBlue
    }
}
