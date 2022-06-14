//
//  ViewController.swift
//  Greener
//
//  Created by Julia Wright on 2022-06-14.
//

import UIKit

class ViewController: UIViewController {

    var titleLabel = UILabel()
    
    // function to allow hex colours to be used
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0

        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

// circular title label at top of page
        titleLabel.frame = CGRect(x: (self.view.frame.width / 2) - 62.5, y: 50, width: 125, height: 125)
        titleLabel.text = "#\n Points"
        self.view.addSubview(titleLabel)
        // number of lines
        titleLabel.numberOfLines = 2
        //background color
        titleLabel.backgroundColor = UIColorFromHex(rgbValue: 0x508A43, alpha: 1)
        //text alignment
        titleLabel.textAlignment = .center
        //text colour
        titleLabel.textColor = UIColorFromHex(rgbValue: 0xDEE4DD, alpha: 1)
        //changing font
        titleLabel.font = UIFont(name: "Avenir Next", size: 18)
        //making circular
        titleLabel.layer.cornerRadius =  titleLabel.frame.width/2
        titleLabel.layer.masksToBounds = true
    }


}

