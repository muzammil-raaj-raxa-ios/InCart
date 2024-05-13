//
//  LoginVC.swift
//  InCart
//
//  Created by Mag isb-10 on 27/04/2024.
//

import UIKit

class LoginVC: UIViewController {
  //MARK: - IB OUTLETS
  @IBOutlet weak var emailTF: UITextField!
  @IBOutlet weak var passwordTF: UITextField!
  @IBOutlet weak var show_hidePasswordImg: UIImageView!
  
  //MARK: - LIFE CYCLE
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //navigationItem.hidesBackButton = true
    emailTF.addBottomBorder()
    passwordTF.addBottomBorder()
  }
  
  
  //MARK: - IB ACTIONS
  @IBAction func backtoOnboardingVC(_ sender: UIBarButtonItem) {
    navigationController?.popViewController(animated: true)
  }
  @IBAction func show_HidePasswordBtn(_ sender: UIButton) {
    if show_hidePasswordImg.image == UIImage(systemName: "eye") {
      show_hidePasswordImg.image = UIImage(systemName: "eye.slash")
      passwordTF.isSecureTextEntry = false
    } else {
      passwordTF.isSecureTextEntry = true
      show_hidePasswordImg.image = UIImage(systemName: "eye")
    }
  }
  
  @IBAction func forgotPassword(_ sender: UIButton) {
    print("forgot password pressed")
  }
  
  @IBAction func loginBtn(_ sender: UIButton) {
    print("HomeVC")
    let storyboard = UIStoryboard(name: "HomeVC", bundle: .main)
    if let vc = storyboard.instantiateViewController(withIdentifier: "HomeVC") as? HomeVC {
      self.navigationController?.pushViewController(vc, animated: true)
    }
  }
  
  @IBAction func signupBtn(_ sender: UIButton) {
    print("signup pressed")
  }
  
}

extension UITextField {
  func addBottomBorder() {
    let bottomLine = CALayer()
    bottomLine.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
    bottomLine.backgroundColor = UIColor.lightGray.cgColor
    borderStyle = .none
    layer.addSublayer(bottomLine)
  }
}
