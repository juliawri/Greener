//
//  TaskModelViewController.swift
//  Greener
//
//  Created by Julia Wright on 2023-06-28.
//

import UIKit

class TaskModelViewController: UIViewController {
    var tableContent = UILabel()
    var contentString = "Hello"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableContent.text = contentString
        // Do any additional setup after loading the view.
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
