//
//  ViewController.swift
//  Greener
//
//  Created by Julia Wright on 2022-06-14.
//

import UIKit

class ViewController: UIViewController {
    
    //how many points user has
    var points = 0
    
    var titleLabel = UILabel()
    var score1Button1 = UIButton()
    var score1Button2 = UIButton()
    var scoreLabel1 = UILabel()
    
    //array of images
    var images = [UIImage(named: "Circle_1")!, UIImage(named: "Circle_2")!]
    
    // function to allow hex codes to be used
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

//first score label
        scoreLabel1.frame = CGRect(x: (self.view.frame.width / 2) - 117.5, y: 300, width: 200, height: 75)
        scoreLabel1.text = "recycle 5 times"
        self.view.addSubview(scoreLabel1)
        //background color
        scoreLabel1.backgroundColor = UIColorFromHex(rgbValue: 0xFF0000, alpha: 1)
        //text alignment
        scoreLabel1.textAlignment = .center
        //text colour
        scoreLabel1.textColor = UIColorFromHex(rgbValue: 0x000000, alpha: 1)
        //changing font
        scoreLabel1.font = UIFont(name: "Avenir Next", size: 18)
        //rounding corners
        scoreLabel1.layer.cornerRadius =  15
        scoreLabel1.layer.masksToBounds = true

        
//first score button with square buttons
        view.addSubview(score1Button2)
        //framing
        score1Button2.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 300, width: 25, height: 75)
        //background color
        score1Button2.backgroundColor = UIColorFromHex(rgbValue: 0x508A43, alpha: 1)
        //tag is used for differentiating buttons
        score1Button2.tag = 1

//first score button with rounded corners
        view.addSubview(score1Button1)
        //framing
        score1Button1.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 300, width: 50, height: 75)
        //background color
        score1Button1.backgroundColor = UIColorFromHex(rgbValue: 0x508A43, alpha: 1)
        //title
        score1Button1.setTitle("hi", for: .normal)
        //making the button clickable
        score1Button1.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        //rounding corners
        score1Button1.layer.cornerRadius = 15
        score1Button1.layer.masksToBounds = true
        //tag is used for differentiating buttons
        score1Button1.tag = 1

    }
        
//function for when first button is tapped
    @objc func buttonAction(sender: UIButton!) {
            if sender.tag == 1 {
                print("button pressed")
            }
        }
    
func pointIncrease(

    
}
