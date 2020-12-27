//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 山田　天星 on 2020/12/13.
//  Copyright © 2020 山田　天星. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet weak var txtName: UITextField!
    var alertController: UIAlertController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        txtName.borderStyle = UITextField.BorderStyle.roundedRect
        txtName.clearButtonMode = UITextField.ViewMode.unlessEditing
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let SecondViewController:SecondViewController = segue.destination as! SecondViewController

        SecondViewController.segueName = txtName.text
    }
    
    
//    @IBAction func btnDo(_ sender:UIStoryboardSegue) {
//
//    }
    
    func alert(title:String, message:String) {
        alertController = UIAlertController(title: title,
                                   message: message,
                                   preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK",
                                       style: .default,
                                       handler: nil))
        present(alertController, animated: true)
    }

    
    @IBAction func btnDo(_ sender:UIStoryboardSegue) {
        if txtName.text == ""{
              alert(title:"確認",
              message:"名前を入力してください")
            } else{
//              segueToSecondViewController()
            }
       }

    func segueToSecondViewController(){
        self.performSegue(withIdentifier:"SecondViewController", sender: nil)
    }
    
}

