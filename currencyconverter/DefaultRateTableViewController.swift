//
//  DefaultRateTableViewController.swift
//  currencyconverter
//
//  Created by MacStudent on 2019-11-14.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
//protocol DefaultChangeControllerDelegate {
//    
//    
//    func changeRateViewController(_ controller: DefaultRateTableViewController, didFinishAdding changedRate: String)
//}
class DefaultRateTableViewController: UIViewController {
    
    var defff = ""
    
    @IBOutlet weak var rateText1: UITextField!
    
    //var delegateDF: DefaultChangeControllerDelegate?
    
    
    
    @IBAction func ChangedPress(_ sender: Any) {
        if(rateText1.text == ""){
            
            let alert = UIAlertController(title: "Field is Empty", message: "Please Enter Amount", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }else{
            defff = rateText1.text!
            print(defff)
            let a = self.navigationController!.viewControllers[0] as! ViewController
            
            a.resetdefault = defff
            self.navigationController!.popToRootViewController(animated: true)
            
        }
        
    }
    
    
    
    var itemToEdit: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let itemToEdit = itemToEdit {
            title = "Edit Item"
            rateText1.text = itemToEdit
            
        }
    }
    
    
}
