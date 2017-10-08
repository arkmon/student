//
//  ViewController.swift
//  student
//
//  Created by Arkadiusz Dowejko on 06/10/2017.
//  Copyright © 2017 arkmon. All rights reserved.
//

import UIKit

class StartScreenViewController: UIViewController {
    
    var viewModel = StartScreenViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createNewStudent() {
        viewModel.showStudentSignUp()
    }
    
    @IBAction func uploadStoredData() {
        
    }
}

