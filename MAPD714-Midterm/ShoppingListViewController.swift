
//  File Name: ShoppingListViewController.swift

//  Authors: Himanshu (301296001)
//  Subject: MAPD714 iOS Development
//  Midterm Test

//  Task: Basic Shopping List Creation App
//  About App: We can add different shopping items in our app and can also alter their quantity using the stepper provided in the app which can add or delete quantity.

//  Date modified: 30/10/2022

import UIKit

class ShoppingListViewController: UIViewController {
    
    // Variable for shopping list name
    var listName:String = ""

    // Connection for shopping list name field
    @IBOutlet weak var listNameField: UITextField!
    
    
    /**
        * Connections for different list items
     */
    
    @IBOutlet weak var item1: UITextField!
    
    
    @IBOutlet weak var item2: UITextField!
    
    
    @IBOutlet weak var item3: UITextField!
    
    
    @IBOutlet weak var item4: UITextField!
    
    
    @IBOutlet weak var item5: UITextField!
    
    
    /**
        * Connections for quantity
     */
    
    @IBOutlet weak var quantity1: UILabel!
    
    
    @IBOutlet weak var quantity2: UILabel!
    
    
    @IBOutlet weak var quantity3: UILabel!
    
    
    @IBOutlet weak var quantity4: UILabel!
    
    
    @IBOutlet weak var quantity5: UILabel!
    
    
    /**
        * Action functions for steppers
        * We can set the quantity label text with the stepper buttons
            
     */

    @IBAction func stepper1(_ sender: UIStepper) {
        
        // Set Quantity 1 text according to the stepper buttons the lowest value can be 0
        quantity1.text = String(Int(sender.value))
    }
    
    @IBAction func stepper2(_ sender: UIStepper) {
        
        // Set Quantity 2 text according to the stepper buttons the lowest value can be 0
        quantity2.text = String(Int(sender.value))
    }
    
    @IBAction func stepper3(_ sender: UIStepper) {
        
        // Set Quantity 3 text according to the stepper buttons the lowest value can be 0
        quantity3.text = String(Int(sender.value))
    }
    
    @IBAction func stepper4(_ sender: UIStepper) {
        
        // Set Quantity 4 text according to the stepper buttons the lowest value can be 0
        quantity4.text = String(Int(sender.value))
    }
    
    
    @IBAction func stepper5(_ sender: UIStepper) {
        
        // Set Quantity 5 text according to the stepper buttons the lowest value can be 0
        quantity5.text = String(Int(sender.value))
    }
    
    
    /**
        * Reset function for setting the values for every quantity to 0
     */
    
    func resetQuantity() {
        quantity1.text = "0"
        quantity2.text = "0"
        quantity3.text = "0"
        quantity4.text = "0"
        quantity5.text = "0"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call reset function
        resetQuantity()
    }
    
    /**
        * Alert function for showing alert if any of the text field for list item is empty
     */
    
    func showAlert() {
        let alertController = UIAlertController(title: "Error", message:
            "Fields Cannot be empty!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }
    
    /**
        * Save Button function for showing List items and their quantity in console
     */
    
    @IBAction func saveButton(_ sender: UIButton) {
        if(item1.text == "" || item2.text == "" || item3.text == "" || item4.text == "" || item5.text == "") {
            return showAlert()
        }
        listName =  (listNameField.text == "" ? "Shopping List" : listNameField.text)!
        print("\n**",listName, "**\n")
        print(item1.text!, "-->", quantity1.text!)
        print(item2.text!, "-->", quantity2.text!)
        print(item3.text!, "-->", quantity3.text!)
        print(item4.text!, "-->", quantity4.text!)
        print(item5.text!, "-->", quantity5.text!)
    }
    
    /**
        * Cancel Button for reseting everything in the app
     */
    
    @IBAction func cancelButton(_ sender: UIButton) {
        listNameField.text = ""
        listName = ""
        item1.text = ""
        item2.text = ""
        item3.text = ""
        item4.text = ""
        item5.text = ""
        resetQuantity()
    }
    
}

