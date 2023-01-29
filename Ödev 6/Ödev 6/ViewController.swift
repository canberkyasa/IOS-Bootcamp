//
//  ViewController.swift
//  Ödev 6
//
//  Created by Canberk Yaşa on 26.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var altView: UIView!
    @IBOutlet weak var ustView: UIView!
    
    @IBOutlet weak var imageProfil: UIImageView!
    
    @IBOutlet weak var tableView: UITableView!
    
    var postlarListe = [Postlar]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        altView.layer.borderWidth = 0.3
        altView.layer.borderColor = UIColor.gray.cgColor
        ustView.layer.borderWidth = 0.3
        ustView.layer.borderColor = UIColor.gray.cgColor
        
        let k1 = Postlar(twitter_id: "Canbo :)", twitter_handle: "@Canbo_0", kac_saat_oldu: "· 3 dk.", post: "Tasarladığım twitter klonuna bakın 😮 çok iyi değil mi 😀", begeniSayisi: 7, retweetSayisi: 1, yorumSayisi: 1, resimAdi: "tanjirokare.jpeg", tBlue: true)
        let k2 = Postlar(twitter_id: "Ömer Kazan", twitter_handle: "@omerkazan1", kac_saat_oldu: "· 10 sa.", post: "arkadaşlar bilgisayar mühendisliği okumayın çok zor", begeniSayisi: 37, retweetSayisi: 5, yorumSayisi: 7, resimAdi: "person1.jpeg", tBlue: false)
        let k3 = Postlar(twitter_id: "Elon Musk", twitter_handle: "@elon_musk", kac_saat_oldu: "· 23 sa.", post: "Tesla ödeme bitcoin ödeme yöntemi yeniden aktif.", begeniSayisi: 14894, retweetSayisi: 402, yorumSayisi: 307, resimAdi: "elonmusk.jpeg", tBlue: false)
        let k4 = Postlar(twitter_id: "Asltronaut", twitter_handle: "@aslcizimler", kac_saat_oldu:"· 3 sa.", post: "ya kedim beni sürekli darlıyor 🐱, ilgi ilgi manyak edicek kendisini", begeniSayisi: 43, retweetSayisi: 2, yorumSayisi: 11, resimAdi: "person5.jpeg", tBlue: true)
        let k5 = Postlar(twitter_id: "Pusholder", twitter_handle: "@pusholder", kac_saat_oldu: "· 47 dk.", post: "Müge Anlı'da bir anne: \"Kızımın erkek seçiminde IQ'su düşüyor.\"", begeniSayisi: 4684, retweetSayisi: 289, yorumSayisi: 138, resimAdi: "pusholder.jpeg", tBlue: false)
        let k6 = Postlar(twitter_id: "Su 🐬🐬", twitter_handle: "@bknzwater", kac_saat_oldu: "· 2 gün", post: "Gaye Su Akyol sen nasıl bir detayssın 😍", begeniSayisi: 4, retweetSayisi: 1, yorumSayisi: 2, resimAdi: "person4.jpeg", tBlue: true)
        
        
        postlarListe.append(k1)
        postlarListe.append(k2)
        postlarListe.append(k3)
        postlarListe.append(k4)
        postlarListe.append(k5)
        postlarListe.append(k6)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        imageProfil.layer.cornerRadius = imageProfil.bounds.height / 2
        

        
        
        
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postlarListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let hucre = tableView.dequeueReusableCell(withIdentifier: "postHucre") as! PostTableViewHucre
        
        let kullanici = postlarListe[indexPath.row]
        
        hucre.imageResim.layer.cornerRadius = hucre.imageResim.bounds.height / 2
        
        hucre.labelAd.text = kullanici.twitter_id
        hucre.labelHandle.text = kullanici.twitter_handle
        hucre.imageResim.image = UIImage(named: kullanici.resimAdi!)
        hucre.labelPost.text = kullanici.post
        
        hucre.buttonLike.titleLabel?.text = String(kullanici.begeniSayisi)
        hucre.buttonComment.titleLabel?.text = String(kullanici.yorumSayisi)
        hucre.buttonRetweet.titleLabel?.text = String(kullanici.retweetSayisi)
        
        hucre.labelSure.text = kullanici.kac_saat_oldu
        hucre.imageBlue.isHidden = kullanici.tBlue
        
        return hucre
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let kullanici = postlarListe[indexPath.row]
        
        print("\(kullanici.twitter_id!) seçildi. Bu tweetin beğeni sayısı : \(String(kullanici.begeniSayisi))")
        
        tableView.deselectRow(at: indexPath, animated: true)

    }
    
}
