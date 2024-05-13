//
//  ItemDetailVC.swift
//  InCart
//
//  Created by Mag isb-10 on 12/05/2024.
//

import UIKit

class ItemDetailVC: UIViewController {
  @IBOutlet weak var backBtn: UIButton!
  @IBOutlet weak var favImage: UIImageView!
  @IBOutlet weak var quantitiLbl: UILabel!
  
  var quantity = 1
  var itemPrice = 0.0
  
  @IBOutlet weak var priceLbl: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    backBtn.setTitle("", for: .normal)
    
    itemPrice = (Double(priceLbl.text!) ?? 0.0)
  }
  
  @IBAction func backHomeBtn(_ sender: UIButton) {
    self.navigationController?.popViewController(animated: true)
  }
  
  @IBAction func favBtn(_ sender: UIButton) {
    favImage.image = (favImage.image == UIImage(named: "heart")) ? UIImage(named: "heartSelected") : UIImage(named: "heart")
  }
  
  
  @IBAction func minusBtn(_ sender: UIButton) {
    if quantity > 1 {
      quantity -= 1
      quantitiLbl.text = "\(quantity)"
      
      let totalprice = Double(quantity) * itemPrice
      priceLbl.text = String(format: "%.2f", totalprice)
    }
  }
  
  
  @IBAction func plusBtn(_ sender: UIButton) {
    quantity += 1
    quantitiLbl.text = "\(quantity)"
    
    let totalprice = Double(quantity) * itemPrice
    priceLbl.text = String(format: "%.2f", totalprice)
  }
  
}

