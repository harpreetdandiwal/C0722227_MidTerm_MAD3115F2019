//
//  ViewController.swift
//  C0722227_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtpassword: UITextField!
    
    @IBOutlet weak var rememberme: UISwitch!
    @IBOutlet weak var txtemail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Login(_ sender: Any) {
        let name = txtemail.text!
        let password = txtpassword.text!
        if name == "harpreetsingh123@gmail.com" && password == "singh1010"
        {
            
            let sb=UIStoryboard(name: "Main", bundle: nil)
            let CustVC = sb.instantiateViewController(withIdentifier: "CustVC") as! CustomerListTableViewController
            navigationController?.pushViewController(CustVC, animated: true)
        }
        else{
            let alert = UIAlertController(title: "Invalid Username Or Password", message: "Please Enter Valid username or password", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            
            self.present(alert, animated: true)
        }
    }
    
    
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


