//
//  ShoppingListViewController.swift
//  MAPD714-Midterm
//

import UIKit

class ShoppingListViewController: UIViewController {
    
    var listName:String = ""

    @IBOutlet weak var listNameField: UITextField!
    
    
    @IBOutlet weak var item1: UITextField!
    
    
    @IBOutlet weak var item2: UITextField!
    
    
    @IBOutlet weak var item3: UITextField!
    
    
    @IBOutlet weak var item4: UITextField!
    
    
    @IBOutlet weak var item5: UITextField!
    
    
    @IBOutlet weak var quantity1: UILabel!
    
    
    @IBOutlet weak var quantity2: UILabel!
    
    
    @IBOutlet weak var quantity3: UILabel!
    
    
    @IBOutlet weak var quantity4: UILabel!
    
    
    @IBOutlet weak var quantity5: UILabel!
    

    @IBAction func stepper1(_ sender: UIStepper) {
        quantity1.text = String(Int(sender.value))
    }
    
    @IBAction func stepper2(_ sender: UIStepper) {
        quantity2.text = String(Int(sender.value))
    }
    
    @IBAction func stepper3(_ sender: UIStepper) {
        quantity3.text = String(Int(sender.value))
    }
    
    @IBAction func stepper4(_ sender: UIStepper) {
        quantity4.text = String(Int(sender.value))
    }
    
    
    @IBAction func stepper5(_ sender: UIStepper) {
        quantity5.text = String(Int(sender.value))
    }
    
    func resetQuantity() {
        quantity1.text = "1"
        quantity2.text = "1"
        quantity3.text = "1"
        quantity4.text = "1"
        quantity5.text = "1"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetQuantity()
    }
    
    func showAlert() {
        let alertController = UIAlertController(title: "Error", message:
            "Fields Cannot be empty!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        if(item1.text == "" || item2.text == "" || item3.text == "" || item4.text == "" || item5.text == "") {
            return showAlert()
        }
        listName =  (listNameField.text == "" ? "Shopping List" : listNameField.text)!
        print(listName)
        print(item1.text!, "=>", quantity1.text!)
        print(item2.text!, "=>", quantity2.text!)
        print(item3.text!, "=>", quantity3.text!)
        print(item4.text!, "=>", quantity4.text!)
        print(item5.text!, "=>", quantity5.text!)
    }
    
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

