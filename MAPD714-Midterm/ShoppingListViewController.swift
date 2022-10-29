//
//  ShoppingListViewController.swift
//  MAPD714-Midterm
//

import UIKit

class ShoppingListViewController: UIViewController {
    
    var listName:String = ""

    @IBOutlet weak var listNameField: UITextField!
    
    
    @IBOutlet weak var listItem1: UITextField!
    
    
    @IBOutlet weak var listItem2: UITextField!
    
    
    @IBOutlet weak var listItem3: UITextField!
    
    
    @IBOutlet weak var listItem4: UITextField!
    
    
    @IBOutlet weak var listItem5: UITextField!
    
    
    @IBOutlet weak var quantity1: UILabel!
    
    
    @IBOutlet weak var quantity2: UILabel!
    
    
    @IBOutlet weak var quantity3: UILabel!
    
    
    @IBOutlet weak var quantity4: UILabel!
    
    
    @IBOutlet weak var quantity5: UILabel!
    
    
    @IBAction func stepper1(_ sender: UIStepper) {
       quantity1.text = String(Int(sender.value))
    }
    
    @IBAction func stepper2(_ sender: UIStepper) {
    }
    
    @IBAction func stepper3(_ sender: UIStepper) {
    }
    
    @IBAction func stepper4(_ sender: UIStepper) {
    }
    
    @IBAction func stepper5(_ sender: UIStepper) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quantity1.text = "0"
        quantity2.text = "0"
        quantity3.text = "0"
        quantity4.text = "0"
        quantity5.text = "0"
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        listName =  (listNameField.text == "" ? "Shopping List" : listNameField.text)!
        print(listName)
    }
    
    @IBAction func cancelButton(_ sender: UIButton) {
        listNameField.text = ""
        listName = ""
    }
    
    
}

