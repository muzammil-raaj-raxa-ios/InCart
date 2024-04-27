//
//  ViewController.swift
//  InCart
//
//  Created by Mag isb-10 on 27/04/2024.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func emailBtn(_ sender: UIButton) {
    let storyboard = UIStoryboard(name: "LoginVC", bundle: .main)
    if let vc = storyboard.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC {
      self.navigationController?.pushViewController(vc, animated: true)
    }
  }
  
}

