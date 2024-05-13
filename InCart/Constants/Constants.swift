//
//  Constants.swift
//  InCart
//
//  Created by Mag isb-10 on 12/05/2024.
//

import UIKit

//MARK: - Home SearchBar
class CustomSearchBar: UISearchBar {
  override func layoutSubviews() {
    super.layoutSubviews()
    
    // Set the background color of the search bar directly
    self.backgroundColor = UIColor.white
    
    // Optionally, you can customize other properties here
    self.searchTextField.backgroundColor = UIColor.white
    self.searchTextField.leftView?.tintColor = UIColor.darkGray
    self.searchTextField.textColor = UIColor.black
    self.searchTextField.attributedPlaceholder = NSAttributedString(string: "Search Store", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
  }
}


//MARK: - Home Item Listings
let exclusiveItems = [
  Item(image: UIImage(named: "apple"), name: "Red Apple", quantity: "1kg", price: 4.99),
  Item(image: UIImage(named: "banana"), name: "Organic Bananas", quantity: "7pcs", price: 5.99),
  Item(image: UIImage(named: "ginger"), name: "Ginger", quantity: "250gm", price: 2.99),
  Item(image: UIImage(named: "capsicum"), name: "Capsicum", quantity: "1kg", price: 4.99),
  Item(image: UIImage(named: "apple"), name: "Red Apple", quantity: "1kg", price: 4.99),
  Item(image: UIImage(named: "banana"), name: "Organic Bananas", quantity: "7pcs", price: 5.99),
  Item(image: UIImage(named: "ginger"), name: "Ginger", quantity: "250gm", price: 2.99),
  Item(image: UIImage(named: "capsicum"), name: "Capsicum", quantity: "1kg", price: 4.99),
]

let bestSellingItems = [
  Item(image: UIImage(named: "pepsi"), name: "Pepsi Can", quantity: "330ml", price: 4.99),
  Item(image: UIImage(named: "cocacola"), name: "Coca Cola Can", quantity: "325ml", price: 4.99),
  Item(image: UIImage(named: "orangeJuice"), name: "Orange Juice", quantity: "2L", price: 15.99),
  Item(image: UIImage(named: "grapeJuice"), name: "Apple and Grape Juice", quantity: "2L", price: 15.99),
  Item(image: UIImage(named: "pepsi"), name: "Pepsi Can", quantity: "330ml", price: 4.99),
  Item(image: UIImage(named: "cocacola"), name: "Coca Cola Can", quantity: "325ml", price: 4.99),
  Item(image: UIImage(named: "orangeJuice"), name: "Orange Juice", quantity: "2L", price: 15.99),
  Item(image: UIImage(named: "grapeJuice"), name: "Apple and Grape Juice", quantity: "2L", price: 15.99),
]

