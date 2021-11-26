//
//  ViewController.swift
//  collApp
//
//  Created by EDA BARUTÇU on 21.11.2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
      
      override func viewDidLoad() {
          super.viewDidLoad()
          // Do any additional setup after loading the view.
      }
      
      func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return 100
          //100 kere renk oluştursun
      }

      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         
          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ColorCollectionViewCell
          
          cell.label.text = "\(indexPath.row + 1)"
          
          cell.backgroundColor = randomColor()
          
          
          return cell
      }
        //random renk oluştucu
    //geriye UIColor döndürecek böylece backroundu istediğim renge dönüştürebileceğim
      func randomColor() -> UIColor {
          let red = CGFloat(drand48())
          //içine drand48 ile sayı oluşturuyorum
          let green = CGFloat(drand48())
          let blue = CGFloat(drand48())
          //otomatik bir sayı üretecek
          
        print(CGFloat(drand48()))
          //nasıl bir sayı ürettiğini aşağıda görelim
          
          return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
          
      }

  }
