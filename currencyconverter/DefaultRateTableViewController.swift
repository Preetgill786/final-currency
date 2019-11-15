//
//  DefaultRateTableViewController.swift
//  currencyconverter
//
//  Created by MacStudent on 2019-11-14.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
protocol DefaultChangeControllerDelegate {
    
    
    func changeRateViewController(_ controller: DefaultRateTableViewController, didFinishAdding changedRate: String)
}
class DefaultRateTableViewController: UITableViewController {

   
       
    @IBOutlet weak var rateText: UILabel!
    var delegateDF: DefaultChangeControllerDelegate?
       
       
       
       @IBAction func ChangedPress(_ sender: Any) {
           if(rateText.text == ""){
               
               let alert = UIAlertController(title: "Field is Empty", message: "Please Enter Amount", preferredStyle: UIAlertController.Style.alert)
               alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
               self.present(alert, animated: true, completion: nil)
               return
           }else{
               
              delegateDF?.changeRateViewController(self, didFinishAdding: rateText.text!)
           }}
       
       
    
       var itemToEdit: String?
       
       override func viewDidLoad() {
         super.viewDidLoad()
         if let itemToEdit = itemToEdit {
           title = "Edit Item"
           rateText.text = itemToEdit
         
         }
       }
       
       
}
