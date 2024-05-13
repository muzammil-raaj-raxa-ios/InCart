//
//  HomeVC.swift
//  InCart
//
//  Created by Mag isb-10 on 04/05/2024.
//

import UIKit

class HomeVC: UIViewController {
  //MARK: - IBOUTLETS
  @IBOutlet weak var searchBar: UISearchBar!
  @IBOutlet weak var exclusiveCV: UICollectionView!
  @IBOutlet weak var bestSellingCV: UICollectionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //Collection View
    exclusiveCV.dataSource = self
    exclusiveCV.delegate = self
    exclusiveCV.register(UINib(nibName: "ItemCvCell", bundle: nil), forCellWithReuseIdentifier: "ItemCvCell")
    exclusiveCV.reloadData()
    
    bestSellingCV.dataSource = self
    bestSellingCV.delegate = self
    bestSellingCV.register(UINib(nibName: "ItemCvCell", bundle: nil), forCellWithReuseIdentifier: "ItemCvCell")
    bestSellingCV.reloadData()
  }
  
  

  
}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    if collectionView == exclusiveCV {
      return exclusiveItems.count
    } else {
      return bestSellingItems.count
    }
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    //Exclusive collection view Items
    if collectionView == exclusiveCV {
      guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCvCell", for: indexPath) as? ItemCvCell else { return UICollectionViewCell() }
      
      let item = exclusiveItems[indexPath.row]
      cell.itemImage?.image = item.image
      cell.itemName?.text = item.name
      cell.itemQuantity?.text = item.quantity
      cell.itemPrice?.text = "\(item.price)"
      
      return cell
    } else {
      //Best selling collection view Items
      guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCvCell", for: indexPath) as? ItemCvCell else { return UICollectionViewCell() }
      
      let item = bestSellingItems[indexPath.row]
      cell.itemImage?.image = item.image
      cell.itemName?.text = item.name
      cell.itemQuantity?.text = item.quantity
      cell.itemPrice?.text = "\(item.price)"
      
      return cell
    }
  }
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 0 // Set the interitem spacing between cells
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    if collectionView == exclusiveCV {
      let storyboard = UIStoryboard(name: "ItemDetailVC", bundle: .main)
      if let vc = storyboard.instantiateViewController(withIdentifier: "ItemDetailVC") as? ItemDetailVC {
        self.navigationController?.pushViewController(vc, animated: true)
      }
    } else {
      let storyboard = UIStoryboard(name: "ItemDetailVC", bundle: .main)
      if let vc = storyboard.instantiateViewController(withIdentifier: "ItemDetailVC") as? ItemDetailVC {
        self.navigationController?.pushViewController(vc, animated: true)
      }
    }
  }
}


