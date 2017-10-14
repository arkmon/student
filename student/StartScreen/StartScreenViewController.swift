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

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createNewStudent() {
        viewModel.showStudentSignUp()
    }
    
    @IBAction func uploadStoredData() {
        viewModel.uploadStudents()
    }
}
