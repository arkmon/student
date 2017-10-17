//
//  StudentSignUpViewController.swift
//  student
//
//  Created by Arkadiusz Dowejko on 07/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import UIKit

class StudentSignUpViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var universityTextField: UITextField!

    let genderPickerView = UIPickerView()
    var viewModel: StudentSignUpViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        genderTextField.delegate = self
        genderPickerView.delegate = self
        genderTextField.inputView = genderPickerView
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }

    func keyboardWillShow(sender: NSNotification) {
        self.view.frame.origin.y -= 50
    }

    func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y += 50
    }
    
    @IBAction func saveStudent() {
        if let firstName = firstNameTextField.text, !firstName.isEmpty,
            let lastName = lastNameTextField.text, !lastName.isEmpty,
            let email = emailTextField.text, !email.isEmpty,
            let gender = genderTextField.text, !gender.isEmpty,
            let university = universityTextField.text, !university.isEmpty {

            viewModel?.createStudent(firstName: firstName,
                                     lastName: lastName,
                                     gender: gender,
                                     email: email,
                                     university: university)

            viewModel?.dismiss(self)
        } else {
            let alert = UIAlertController(title: "Error",
                                          message: "Please make sure to populate all fields",
                                          preferredStyle: UIAlertControllerStyle.alert)

            alert.addAction(UIAlertAction(title: "OK",
                                          style: UIAlertActionStyle.cancel,
                                          handler: nil))

            self.present(alert, animated: true, completion: nil)
        }
    }
}

extension StudentSignUpViewController: UIPickerViewDelegate, UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return viewModel?.numberOfItemsInGenderArray ?? 0
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return viewModel?.genderArray[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderTextField.text = viewModel?.genderArray[row]
    }
}

extension StudentSignUpViewController: UITextFieldDelegate {

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        genderTextField.text = viewModel?.genderArray[0]
        return true
    }
}
