//
//  ShoppingListViewController.swift
//  MAPD714-Midterm
//

import UIKit

class ShoppingListViewController: UIViewController {
    
    var listName:String = ""

    @IBOutlet weak var listNameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

