//
//  ViewController.swift
//  currencyconverter
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
  
    @IBOutlet weak var fromlabel: UILabel!
    @IBOutlet weak var tolabel: UILabel!
    
    @IBOutlet weak var fromimg: UIImageView!
    @IBOutlet weak var toimg: UIImageView!
    
    @IBOutlet weak var defaultRate: UILabel!
    var check = true
     var resetdefault = ""
    var value:String! = "USD"
    var value1:String! = "INR"
    let usdinr = 71.58
           let usdcad = 1.32
           let usdeur = 0.91
           
           let inrcad = 0.018
           let inreur = 0.013
           
           let cadeur = 0.69
           
          
    var amt:Double! = 0.0
                
  
    @IBOutlet weak var enterAmount: UITextField!
  
    @IBOutlet weak var result: UILabel!
    
    @IBAction func convertButton(_ sender: Any) {
        
        
        
        
        
        var amt:Double! = Double(enterAmount.text!)
        
        
        
        if resetdefault == ""
        {
            
        }else{
            resetNewDefault()
            return
        }
       
       if amt == nil{
                     showAlert()
                     return
                 }
        switch fromlabel.text{
            
            case "USD":
                
                switch tolabel.text{
                    case "USD":
                        amt = amt * 1
                        break
                    
                    case "INR":
                        amt = amt * usdinr
                        break
                    
                    case "CAD":
                        amt = amt * usdcad
                        break
                    
                    case "EUR":
                        amt = amt * usdeur
                        break
                    
                    default:
                        break
                }
                
                break
            
            case "INR":
                
                switch tolabel.text{
                    case "USD":
                        amt = amt * 1/usdinr
                        break
                    
                    case "INR":
                        amt = amt * 1
                        break
                    
                    case "CAD":
                        amt = amt * inrcad
                        break
                    
                    case "EUR":
                        amt = amt * inreur
                        break
                    
                    default:
                        break
                }
                
                break
            
            case "CAD":
                
                switch tolabel.text{
                    case "USD":
                        amt = amt * 1/usdcad
                        break
                    
                    case "INR":
                        amt = amt * 1/inrcad
                        break
                    
                    case "CAD":
                        amt = amt * 1
                        break
                    
                    case "EUR":
                        amt = amt * cadeur
                        break
                    
                    default:
                        break
                }
                
                break
            
            case "EUR":
                
                switch tolabel.text{
                    case "USD":
                        amt = amt * 1/usdeur
                        break
                    
                    case "INR":
                        amt = amt * 1/inreur
                        break
                    
                    case "CAD":
                        amt = amt * 1/cadeur
                        break
                    
                    case "EUR":
                        amt = amt * 1
                        break
                    
                    default:
                        break
                }
                
                break
            
            default:
                break
        }
        
        result.text = String(amt)
    
       
    }
    
    @IBAction func unwindone(_ sender: UIStoryboardSegue) {
        
        guard let vc = sender.source as? CurrencyTableViewController else{return}
        if(check){
            fromlabel.text = vc.val
            
            switch fromlabel.text{
            
                case "USD" :
                    fromimg.image = #imageLiteral(resourceName: "united-states")
                break
            
                case "INR" :
                    fromimg.image = #imageLiteral(resourceName: "india")
                break
                
                case "EUR" :
                    fromimg.image = #imageLiteral(resourceName: "European-Union-Flag")
                break
                
                case "CAD" :
                    fromimg.image = #imageLiteral(resourceName: "canada")
                break
            
            default:
            break
            }
            
        }else{
            tolabel.text = vc.val
            
            switch tolabel.text{
            
                case "USD" :
                    toimg.image = #imageLiteral(resourceName: "united-states")
                break
            
                case "INR" :
                    toimg.image = #imageLiteral(resourceName: "india")
                break
                
                case "EUR" :
                    toimg.image = #imageLiteral(resourceName: "European-Union-Flag")
                break
                
                case "CAD" :
                    toimg.image = #imageLiteral(resourceName: "canada")
                break
            
            default:
            break
            }
        }
        
        
        
        
    }
  
         func defValue(){
         
   switch fromlabel.text{

            
                  case "USD":
                     switch tolabel.text{

                          case "USD":
                              amt = amt * 1
                              defaultRate.text = String(1)
                              break

                          case "INR":
                              amt = amt * usdinr
                              defaultRate.text = String(71.58)
                              break

                          case "CAD":
                              amt = amt * usdcad
                              defaultRate.text = String(1.32)
                              break

                          case "EUR":
                              amt = amt * usdeur
                              defaultRate.text = String(0.91)
                              break

                          default:
                              break

                      }

                      break

                  case "INR":
                     switch tolabel.text{

                          case "USD":
                              amt = amt * 1/usdinr
                              defaultRate.text = String(1/usdinr)
                              break

                          case "INR":

                              amt = amt * 1
                              defaultRate.text = String(1)
                              break

                          case "CAD":
                              amt = amt * inrcad
                              defaultRate.text = String(inrcad)
                              break

                          case "EUR":
                              amt = amt * inreur
                              defaultRate.text = String(inreur)
                              break

                          default:
                              break

                      }

                      break

                  case "CAD":

                      switch tolabel.text{
                          case "USD":
                              amt = amt * 1/usdcad
                              defaultRate.text = String(1/usdcad)
                              break
                         
                             case "INR":
                              amt = amt * 1/inrcad
                               defaultRate.text = String(1/inrcad)
                              break

                          case "CAD":
                              amt = amt * 1
                              defaultRate.text = String(1)
                              break

                          case "EUR":
                              amt = amt * cadeur
                               defaultRate.text = String(1/cadeur)
                              break

                          default:
                              break

                      }

                      break

                  case "EUR":

                      switch tolabel.text{
                          case "USD":
                              amt = amt * 1/usdeur
                               defaultRate.text = String(1/usdeur)
                              break

                          case "INR":
                              amt = amt * 1/inreur
                               defaultRate.text = String(1/inreur)
                              break

                          case "CAD":
                              amt = amt * 1/cadeur
                               defaultRate.text = String(1/cadeur)
                              break

                          case "EUR":
                              amt = amt * 1
                               defaultRate.text = String(1)
                              break

                          default:
                              break

                      }

                      break

                  default:
                      break

              }
            
              

         }
    
    
    func resetNewDefault(){
        
              var amt:Double! = Double(enterAmount.text!)
               
         switch fromlabel.text{

                  
                        case "USD":
                           switch tolabel.text{

                                case "USD":
                                    amt = amt * Double(resetdefault)!
                                    result.text = String(amt)
                                    break

                                case "INR":
                                    print(resetdefault)
                                    amt = amt * Double(resetdefault)!
                                    print(amt)
                                    result.text = String(amt)
                                    break

                                case "CAD":
                                    amt = amt * Double(resetdefault)!
                                     result.text = String(amt)
                                    break

                                case "EUR":
                                    amt = amt * Double(resetdefault)!
                                     result.text = String(amt)
                                    break

                                default:
                                    break

                            }

                            break

                        case "INR":
                           switch tolabel.text{

                                case "USD":
                                    amt = amt * Double(resetdefault)!
                                    result.text = String(amt)
                                    break

                                case "INR":

                                    amt = amt * Double(resetdefault)!
                                  result.text = String(amt)
                                    break

                                case "CAD":
                                    amt = amt * Double(resetdefault)!
                                    result.text = String(amt)
                                    break

                                case "EUR":
                                    amt = amt * Double(resetdefault)!
                                    result.text = String(amt)
                                    break

                                default:
                                    break

                            }

                            break

                        case "CAD":

                            switch tolabel.text{
                                case "USD":
                                    amt = amt * Double(resetdefault)!
                                    result.text = String(amt)
                                    break
                               
                                   case "INR":
                                    amt = amt * Double(resetdefault)!
                                     result.text = String(amt)
                                    break

                                case "CAD":
                                    amt = amt * Double(resetdefault)!
                                   result.text = String(amt)
                                    break

                                case "EUR":
                                    amt = amt * Double(resetdefault)!
                                     result.text = String(amt)
                                    break

                                default:
                                    break

                            }

                            break

                        case "EUR":

                            switch tolabel.text{
                                case "USD":
                                    amt = amt * Double(resetdefault)!
                                     result.text = String(amt)
                                    break

                                case "INR":
                                    amt = amt * Double(resetdefault)!
                                     result.text = String(amt)
                                    break

                                case "CAD":
                                    amt = amt * Double(resetdefault)!
                                    result.text = String(amt)
                                    break

                                case "EUR":
                                    amt = amt * Double(resetdefault)!
                                     result.text = String(amt)
                                    break

                                default:
                                    break

                            }

                            break

                        default:
                            break

                    }
                  
                    

               
    }
    
    
    
    @IBAction func changeBtn(_ sender: Any)
   
    {
     defValue()
        check = true
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CurrencyTableViewController") as? CurrencyTableViewController {
            
            if let navigator = navigationController {
                navigator.pushViewController(viewController, animated: true)
            }
        }
        
    }
    
    @IBAction func changeBtn2(_ sender: Any)
    {
        defValue()
        check = false
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CurrencyTableViewController") as? CurrencyTableViewController {
            
            if let navigator = navigationController {
                navigator.pushViewController(viewController, animated: true)
            }
        }
        
    }
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addDoneButtonOnKeyboard()
        
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        defValue()
        if resetdefault == ""{
            
        }else{
            defaultRate.text = resetdefault
        }
        
        fromlabel.text = value
        
        tolabel.text = value1
        
        switch fromlabel.text{
            
                case "USD" :
                    fromimg.image = #imageLiteral(resourceName: "united-states")
                break
            
                case "INR" :
                    fromimg.image = #imageLiteral(resourceName: "india")
                break
                
                case "EUR" :
                    fromimg.image = #imageLiteral(resourceName: "European-Union-Flag")
                break
                
                case "CAD" :
                    fromimg.image = #imageLiteral(resourceName: "canada")
                break
            
            default:
            break
            }
            
            switch tolabel.text{
            
                case "USD" :
                    toimg.image = #imageLiteral(resourceName: "united-states")
                break
            
                case "INR" :
                    toimg.image = #imageLiteral(resourceName: "india")
                break
                
                case "EUR" :
                    toimg.image = #imageLiteral(resourceName: "European-Union-Flag")
                break
                
                case "CAD" :
                    toimg.image = #imageLiteral(resourceName: "canada")
                break
            
            default:
            break
            }
       


    }
   func  showAlert() {
      let message = "Please enter the amount"
      let alert = UIAlertController(title: "Field can't be blank",message: message,
                         preferredStyle: .alert)
    let action = UIAlertAction(title: "OK",
                               style: .default,
    // changed
    // changed
                             handler: nil)
    present(alert, animated: true, completion: nil)
      alert.addAction(action)
    }
    
}



extension ViewController {

    

    func addDoneButtonOnKeyboard(){

        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))

        doneToolbar.barStyle = .default


        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)

        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))


        let items = [flexSpace, done]

        doneToolbar.items = items

        doneToolbar.sizeToFit()


        enterAmount.inputAccessoryView = doneToolbar

    }


    @objc func doneButtonAction(){

        enterAmount.resignFirstResponder()

    }

}
