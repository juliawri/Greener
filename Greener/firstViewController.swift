//
//  firstViewController.swift
//  Greener
//
//  Created by Shabicha Sureshkumar on 2022-06-16.
//

import UIKit
import SwiftUI
class firstViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descLabel: UILabel!
    
// function to allow hex codes to be used
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0

        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
       override func viewDidLoad() {
        super.viewDidLoad()
//"Instructions" label
        titleLabel.font = UIFont(name: "Avenir Next", size: 34)
        //titleLabel.frame = CGRect(x: (self.view.frame.width / 2) - 150, y: 20, width: 300, height: 75)
        titleLabel.text = "Instructions:"
        self.view.addSubview(titleLabel)
        //text alignment
        titleLabel.textAlignment = .center
        //text colour
        titleLabel.textColor = UIColorFromHex(rgbValue: 0xFFFFFF, alpha: 1)
        titleLabel.backgroundColor = UIColorFromHex(rgbValue: 0x10440C, alpha: 1)
           titleLabel.layer.cornerRadius = 15
           titleLabel.layer.masksToBounds = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        //titleLabel.heightAnchor.constraint(equalToConstant: 75)
        //titleLabel.widthAnchor.constraint(equalToConstant: 300)
        var constraints = [
            titleLabel.leftAnchor.constraint(equalTo: titleLabel.leftAnchor, constant: 50),
            titleLabel.rightAnchor.constraint(equalTo: titleLabel.rightAnchor, constant: 50),
           titleLabel.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 50),
           titleLabel.bottomAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 500)
         ]
           
           NSLayoutConstraint.activate(constraints)

        
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
