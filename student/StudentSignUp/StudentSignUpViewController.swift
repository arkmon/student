//
//  StudentSignUpViewController.swift
//  student
//
//  Created by Arkadiusz Dowejko on 07/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import UIKit

class StudentSignUpViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var universityTextField: UITextField!

    let genderPickerView = UIPickerView()
    var viewModel = StudentSignUpViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        genderTextField.delegate = self
        genderPickerView.delegate = self
        genderTextField.inputView = genderPickerView
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveStudent() {
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return viewModel.genderArray.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return viewModel.genderArray[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderTextField.text = viewModel.genderArray[row]
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        genderTextField.text = viewModel.genderArray[0]
        return true
    }
    
    func keyboardWillShow(sender: NSNotification) {
        self.view.frame.origin.y -= 50
    }
    func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y += 50
    }
}
