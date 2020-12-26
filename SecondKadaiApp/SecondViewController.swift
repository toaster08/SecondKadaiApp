//
//  SecondViewController.swift
//  SecondKadaiApp
//
//  Created by 山田　天星 on 2020/12/13.
//  Copyright © 2020 山田　天星. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var segueName:String!
    @IBOutlet weak var submitName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        submitName.text = segueName + "さん"
        submitName.textColor = UIColor.blue
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
