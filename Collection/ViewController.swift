//
//  ViewController.swift
//  Collection
//
//  Created by Arief Ramadhan on 05/04/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    @IBOutlet weak var collectionView: UICollectionView!
    
    var products = ["balanciaga", "gucci", "rolex", "LV", "Fendi","balanciaga", "gucci", "rolex", "LV", "Fendi"]
    var prices = ["1.5k", "2k", "5k", "2.6k", "7k","1.5k", "2k", "5k", "2.6k", "7k"]
    var productImage = ["balance","balance","balance","balance","balance","balance","balance","balance","balance","balance"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCellID", for: indexPath) as? ItemCell)!

        cell.itemImage.image = UIImage(named: productImage[indexPath.row])
        cell.itemName.text = products[indexPath.row]
        cell.itemPrice.text = prices[indexPath.row]

        return cell
    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print("\(products[indexPath.row]) with price \(prices[indexPath.row])")
//    }
}
