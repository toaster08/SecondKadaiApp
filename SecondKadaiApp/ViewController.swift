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
    
// 名前が入力されていない場合のポップアップのfunction
    func alert(title:String, message:String) {
        alertController = UIAlertController(title: title,
                                   message: message,
                                   preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK",
                                       style: .default,
                                       handler: nil))
        present(alertController, animated: true)
    }

//　名前が入力されている場合に限り遷移
    @IBAction func btnDo(_ sender:UIStoryboardSegue) {
        if txtName.text == ""{
              alert(title:"確認",
              message:"名前を入力してください")
            } else{

            }
       }

}

