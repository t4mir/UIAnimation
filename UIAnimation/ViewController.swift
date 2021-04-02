//
//  ViewController.swift
//  UIAnimation
//
//  Created by Тамирлан Абаев   on 31.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField! {
        didSet {
            emailText.frame = CGRect(x: -252, y: 336, width: 252, height: 34)
        }
    }
    
    
    @IBOutlet weak var passwordText: UITextField!
    {
        didSet {
            passwordText.frame = CGRect(x: 414, y: 431, width: 252, height: 34)
        }
    }
    @IBOutlet weak var nextOutlet: UIButton!
    {
        didSet {
            nextOutlet.layer.cornerRadius = 10
            nextOutlet.layer.borderWidth = 1.0
            nextOutlet.layer.borderColor = UIColor.white.cgColor
            nextOutlet.clipsToBounds = true
            nextOutlet.alpha = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        UIView.animate(withDuration: 1) {
            self.emailText.frame = CGRect(x:81 , y: 336, width: 252, height: 34)
            self.passwordText.frame = CGRect(x: 81, y: 431, width: 252, height: 34)
        } completion: { _ in
            UIView.animate(withDuration: 1) {
                self.nextOutlet.alpha = 1
            }
        }
    

        // Do any additional setup after loading the view.
    }
    
    
   
    
    @IBAction func nextPressed(_ sender: UIButton) {
        
         
        UIView.animate(withDuration: 0.4) {
            self.emailText.frame = CGRect(x:-414 , y: 0, width: 252, height: 34)
            self.passwordText.frame = CGRect(x: 414, y: 95, width: 252, height: 34)
        } 

        

    }
    
}

