//
//  ViewController.swift
//  C0722227_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
@IBOutlet weak var txtemail: UITextField!
    
    @IBOutlet weak var txtpassword: UITextField!
    

    @IBOutlet weak var rememberme: UISwitch!
    
    
    @IBAction func login(_ sender: Any)
    {
        let name = txtemail.text!
        let password = txtpassword.text!
        if name == "harpreetsingh" && password == "singh1010"
        {
            
            let sb=UIStoryboard(name: "Main", bundle: nil)
            let CustVC = sb.instantiateViewController(withIdentifier: "CustVC") as! CustomerListTableViewController
            navigationController?.pushViewController(CustVC, animated: true)
        }
        else{
            
        }
    }

        
}

