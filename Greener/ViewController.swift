//
//  ViewController.swift
//  Greener
//
//  Created by Julia Wright on 2022-06-14.
//

import UIKit
import SwiftUI
import CoreData
class ViewController: UIViewController {
    
    var defaults = UserDefaults.standard
    
   var points1 = Points()
     var pointsTemp2 = 0
    var pointsCD = [PointsCD] ()
    

    // declaring "Greener" label
    var greenerLabel = UILabel()
    

   //declaring points labels
    var titleLabel = UILabel()
    
    //declaring "Suggested Actions" label
    var suggLabel = UILabel()
    
    
    //declaring first points buttons
    var score1Button3 = UIButton()
    var score1Button1 = UIButton()
    var score1Button2 = UIButton()
    
    //declaring second points buttons
    var score2Button1 = UIButton()
    var score2Button2 = UIButton()
    var score2Button3 = UIButton()
    
    //declaring third points button
    var score3Button1 = UIButton()
    var score3Button2 = UIButton()
    var score3Button3 = UIButton()
    
    //declaring "Other Ways to Get Points:" label
    var moreOptionsLabel = UILabel()
    
    //declaring "More Tasks" Button
    var moreOptionsButton = UIButton()
    
    //declaring "Instructions" button
    var instrucButton = UIButton()
    
    //declaring purple flower image
    var imageView1: UIImageView = {
           let theImageView1 = UIImageView()
           theImageView1.image = UIImage(named: "purpleflower")
           return theImageView1
        }()
    
    //declaring red flower image
    var imageView2: UIImageView = {
           let theImageView1 = UIImageView()
           theImageView1.image = UIImage(named: "redflower")
           return theImageView1
        }()
    
    //declaring orange flower image
    var imageView3: UIImageView = {
           let theImageView1 = UIImageView()
           theImageView1.image = UIImage(named: "orangeflower")
           return theImageView1
        }()
    
    //declaring bee image
    var imageView4: UIImageView = {
           let theImageView1 = UIImageView()
           theImageView1.image = UIImage(named: "bee")
           return theImageView1
        }()
    
    //declaring caterpillar image
    var imageView5: UIImageView = {
           let theImageView1 = UIImageView()
           theImageView1.image = UIImage(named: "caterpillar")
           return theImageView1
        }()
    
    //declaring snail image
    var imageView6: UIImageView = {
           let theImageView1 = UIImageView()
           theImageView1.image = UIImage(named: "snail")
           return theImageView1
        }()
    
    //declaring slug image
    var imageView7: UIImageView = {
           let theImageView1 = UIImageView()
           theImageView1.image = UIImage(named: "slug")
           return theImageView1
        }()
    
    //declaring ant image
    var imageView8: UIImageView = {
           let theImageView1 = UIImageView()
           theImageView1.image = UIImage(named: "ant")
           return theImageView1
        }()
    
    //declaring ladybug image
    var imageView9: UIImageView = {
           let theImageView1 = UIImageView()
           theImageView1.image = UIImage(named: "ladybug")
           return theImageView1
        }()
    
    //declaring beetle image
    var imageView10: UIImageView = {
           let theImageView1 = UIImageView()
           theImageView1.image = UIImage(named: "beetle")
           return theImageView1
        }()
    
    

    
    // function to allow hex codes to be used
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0

        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        points1.number = defaults.integer(forKey: "age")
        
//purple flower image
        view.addSubview(imageView1)
        imageView1.frame = CGRect(x: (self.view.frame.width / 2) + 40, y: 700, width: 160, height: 200)
        imageView1.isHidden = true
    
//redflower image
        view.addSubview(imageView2)
        imageView2.frame = CGRect(x: (self.view.frame.width / 2) - 233, y: 700, width: 160, height: 200)
        imageView2.isHidden = true

//orange flower image
        view.addSubview(imageView3)
        imageView3.frame = CGRect(x: (self.view.frame.width / 2) + 10, y: 0, width: 200, height: 160)
        imageView3.isHidden = true

//bee image
        view.addSubview(imageView4)
        imageView4.frame = CGRect(x: (self.view.frame.width / 2) - 200, y: 425, width: 160, height: 160)
        imageView4.isHidden = true

//caterpillar image
        imageView5.transform = imageView5.transform.rotated(by: .pi * 1.5)
        view.addSubview(imageView5)
        imageView5.frame = CGRect(x: (self.view.frame.width / 2) + 112, y: 400, width: 160, height: 200)
        imageView5.isHidden = true
        

//snail image
        view.addSubview(imageView6)
        imageView6.transform = imageView5.transform.rotated(by: .pi * 1.95)
        imageView6.frame = CGRect(x: (self.view.frame.width / 2) + 109 , y: 150, width: 160, height: 145)
        imageView6.isHidden = true

//slug image
        view.addSubview(imageView7)
        imageView7.transform = imageView7.transform.rotated(by: .pi + 1.5)
        imageView7.frame = CGRect(x: (self.view.frame.width / 2) - 165, y: 150, width: 160, height: 160)
        imageView7.isHidden = true

//ant image
        view.addSubview(imageView8)
        imageView8.frame = CGRect(x: (self.view.frame.width / 2) + 85, y: 550, width: 160, height: 200)
        imageView8.isHidden = true

//ladybug image
        view.addSubview(imageView9)
        imageView9.frame = CGRect(x: (self.view.frame.width / 2) + 85, y: 550, width: 160, height: 200)
        imageView9.isHidden = true

//beetle image
        view.addSubview(imageView10)
        imageView10.frame = CGRect(x: (self.view.frame.width / 2) + 85, y: 550, width: 160, height: 200)
        imageView10.isHidden = true
   
//"Greener" Label
        greenerLabel.frame = CGRect(x: (self.view.frame.width / 2) - 150, y: 60, width: 300, height: 87.5)
        greenerLabel.text = "Greener"
        self.view.addSubview(greenerLabel)
        //text alignment
        greenerLabel.textAlignment = .center
        //text colour
        greenerLabel.textColor = UIColorFromHex(rgbValue: 0xFFFFFF, alpha: 1)
        //changing font
        greenerLabel.font = UIFont(name: "Avenir Next", size: 60)
        //background colour
        greenerLabel.backgroundColor = UIColorFromHex(rgbValue: 0x508A43, alpha: 1)
        //rounding corners
        //making circular
        greenerLabel.layer.cornerRadius =  5
        greenerLabel.layer.masksToBounds = true
        
// circular title label at top of page
        titleLabel.frame = CGRect(x: (self.view.frame.width / 2) - 100, y: 162.5, width: 200, height: 200)
        titleLabel.text = "\(points1.number)\n Points"
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
        titleLabel.font = UIFont(name: "Avenir Next", size: 22)
        //making circular
        titleLabel.layer.cornerRadius =  titleLabel.frame.width/2
        titleLabel.layer.masksToBounds = true

// "Suggested Tasks" Label
        suggLabel.frame = CGRect(x: (self.view.frame.width / 2) - 200, y: 342, width: 200, height: 75)
        suggLabel.text = "Suggested Tasks:"
        self.view.addSubview(suggLabel)
        //text alignment
        suggLabel.textAlignment = .center
        //text colour
        suggLabel.textColor = UIColorFromHex(rgbValue: 0x10440C, alpha: 1)
        //changing font
        suggLabel.font = UIFont(name: "Avenir Next", size: 18)
        suggLabel.font = suggLabel.font.italic

        
//first score left button
        score1Button3.frame = CGRect(x: (self.view.frame.width / 2) - 117.5, y: 400, width: 200, height: 75)
        score1Button3.setTitle("Recycle 5 Items", for: .normal)
        view.addSubview(score1Button3)
        //background color
        score1Button3.backgroundColor = UIColorFromHex(rgbValue: 0x10440C, alpha: 1)
        //text colour
        score1Button3.setTitleColor(UIColorFromHex(rgbValue: 0xDDE4DD, alpha: 1), for: .normal)
        //changing font
        score1Button3.titleLabel?.font = UIFont(name: "Avenir Next", size: 18)
        //rounding corners
        score1Button3.layer.cornerRadius =  15
        score1Button3.layer.masksToBounds = true
        //making button clickable
        score1Button3.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        //tags for differentiating buttons
        score1Button3.tag = 11
        
//first score right button with square corners
        view.addSubview(score1Button2)
        //framing
        score1Button2.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 400, width: 25, height: 75)
        //background color
        score1Button2.backgroundColor = UIColorFromHex(rgbValue: 0x749668, alpha: 1)
        //tag is used for differentiating buttons
        score1Button2.tag = 1

//first score right button with rounded corners
        view.addSubview(score1Button1)
        //framing
        score1Button1.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 400, width: 50, height: 75)
        //background color
        score1Button1.backgroundColor = UIColorFromHex(rgbValue: 0x749668, alpha: 1)
        //title
        score1Button1.setTitle("+", for: .normal)
        //making the button clickable
        score1Button1.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        //rounding corners
        score1Button1.layer.cornerRadius = 15
        score1Button1.layer.masksToBounds = true
        //tag is used for differentiating buttons
        score1Button1.tag = 1

//second score left button
        score2Button3.frame = CGRect(x: (self.view.frame.width / 2) - 117.5, y: 500, width: 200, height: 75)
        score2Button3.setTitle("Bring Your Own\n  Grocery Bags", for: .normal)
        view.addSubview(score2Button3)
        //background color
        score2Button3.backgroundColor = UIColorFromHex(rgbValue: 0x10440C, alpha: 1)
        //text colour
        score2Button3.setTitleColor(UIColorFromHex(rgbValue: 0xDDE4DD, alpha: 1), for: .normal)
        //changing font
        score2Button3.titleLabel?.font = UIFont(name: "Avenir Next", size: 18)
        //rounding corners
        score2Button3.layer.cornerRadius =  15
        score2Button3.layer.masksToBounds = true
        //making button clickable
        score2Button3.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        //multiple lines
        score2Button3.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping;
        //tags for differentiating buttons
        score2Button3.tag = 12

                
//second score right button with square corners
        view.addSubview(score2Button2)
        //framing
        score2Button2.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 500, width: 25, height: 75)
        //background color
        score2Button2.backgroundColor = UIColorFromHex(rgbValue: 0x749668, alpha: 1)
        //tag is used for differentiating buttons
        score2Button2.tag = 2

//second score right button with rounded corners
        view.addSubview(score2Button1)
        //framing
        score2Button1.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 500, width: 50, height: 75)
        //background color
        score2Button1.backgroundColor = UIColorFromHex(rgbValue: 0x749668, alpha: 1)
        //title
        score2Button1.setTitle("+", for: .normal)
        //making the button clickable
        score2Button1.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        //rounding corners
        score2Button1.layer.cornerRadius = 15
        score2Button1.layer.masksToBounds = true
        //tag is used for differentiating buttons
        score2Button1.tag = 2

//third score left button
        score3Button3.frame = CGRect(x: (self.view.frame.width / 2) - 117.5, y: 600, width: 200, height: 75)
        score3Button3.setTitle("Grow an Indoor\n         Plant", for: .normal)
        view.addSubview(score3Button3)
        //background color
        score3Button3.backgroundColor = UIColorFromHex(rgbValue: 0x10440C, alpha: 1)
        //text colour
        score3Button3.setTitleColor(UIColorFromHex(rgbValue: 0xDDE4DD, alpha: 1), for: .normal)
        //changing font
        score3Button3.titleLabel?.font = UIFont(name: "Avenir Next", size: 18)
        //rounding corners
        score3Button3.layer.cornerRadius =  15
        score3Button3.layer.masksToBounds = true
        //making button clickable
        score3Button3.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        //tags for differentiating buttons
        score3Button3.tag = 13
        //multiple lines
        //multiple lines
        score3Button3.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping;

                
//third score right button with square corners
        view.addSubview(score3Button2)
        //framing
        score3Button2.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 600, width: 25, height: 75)
        //background color
        score3Button2.backgroundColor = UIColorFromHex(rgbValue: 0x749668, alpha: 1)
        //tag is used for differentiating buttons
        score3Button2.tag = 3

//third score right button with rounded corners
        view.addSubview(score3Button1)
        //framing
        score3Button1.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 600, width: 50, height: 75)
        //background color
        score3Button1.backgroundColor = UIColorFromHex(rgbValue: 0x749668, alpha: 1)
        //title
        score3Button1.setTitle("+", for: .normal)
        //making the button clickable
        score3Button1.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        //rounding corners
        score3Button1.layer.cornerRadius = 15
        score3Button1.layer.masksToBounds = true
        //tag is used for differentiating buttons
        score3Button1.tag = 3

//"Other Ways to Get Points" label
        moreOptionsLabel.frame = CGRect(x: (self.view.frame.width / 2) - 217.5, y: 667, width: 300, height: 75)
        moreOptionsLabel.text = "Other Ways to Get Points:"
        self.view.addSubview(moreOptionsLabel)
        //text alignment
        moreOptionsLabel.textAlignment = .center
        //text colour
        moreOptionsLabel.textColor = UIColorFromHex(rgbValue: 0x10440C, alpha: 1)
        //changing font
        moreOptionsLabel.font = UIFont(name: "Avenir Next", size: 18)
        moreOptionsLabel.font = moreOptionsLabel.font.italic

//"More Tasks" Button
        moreOptionsButton.frame = CGRect(x: (self.view.frame.width / 2) - 120, y: 720, width: 240, height: 75)
        moreOptionsButton.setTitle("More Tasks", for: .normal)
        view.addSubview(moreOptionsButton)
        //background color
        moreOptionsButton.backgroundColor = UIColorFromHex(rgbValue: 0x10440C, alpha: 1)
        //text colour
        moreOptionsButton.setTitleColor(UIColorFromHex(rgbValue: 0xDDE4DD, alpha: 1), for: .normal)
        //changing font
        moreOptionsButton.titleLabel?.font = UIFont(name: "Avenir Next", size: 18)
        //rounding corners
        moreOptionsButton.layer.cornerRadius =  15
        moreOptionsButton.layer.masksToBounds = true
        //making button clickable
        moreOptionsButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        //tags for differentiating buttons
        moreOptionsButton.tag = 5
        
//"Instrutions" button
        instrucButton.frame = CGRect(x: (self.view.frame.width / 2) - 62.5, y: 820, width: 125, height: 40)
        instrucButton.setTitle("Instructions", for: .normal)
        view.addSubview(instrucButton)
        //background color
        instrucButton.backgroundColor = UIColorFromHex(rgbValue: 0x10440C, alpha: 1)
        //text colour
        instrucButton.setTitleColor(UIColorFromHex(rgbValue: 0xDDE4DD, alpha: 1), for: .normal)
        //changing font
        instrucButton.titleLabel?.font = UIFont(name: "Avenir Next", size: 18)
        //rounding corners
        instrucButton.layer.cornerRadius =  15
        instrucButton.layer.masksToBounds = true
        //making button clickable
        instrucButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        //tags for differentiating buttons
        instrucButton.tag = 7
               
    }
//function for when first button is tapped
    @objc func buttonAction(sender: UIButton!) {
            if sender.tag == 1 {
                score1Button1.backgroundColor = UIColorFromHex(rgbValue: 0xAFD1A2)
                score1Button2.backgroundColor = UIColorFromHex(rgbValue: 0xAFD1A2)
                points1.number = points1.number + 5
            titleLabel.text = "\(points1.number)\n Points"
                
            }
            if sender.tag == 2 {
                score2Button1.backgroundColor = UIColorFromHex(rgbValue: 0xAFD1A2)
                score2Button2.backgroundColor = UIColorFromHex(rgbValue: 0xAFD1A2)
            points1.number = points1.number + 10
            titleLabel.text = "\(points1.number)\n Points"
            }
            if sender.tag == 3 {
                score3Button1.backgroundColor = UIColorFromHex(rgbValue: 0xAFD1A2)
                score3Button2.backgroundColor = UIColorFromHex(rgbValue: 0xAFD1A2)
                points1.number = points1.number + 15
                titleLabel.text = "\(points1.number)\n Points"
            }
        if points1.number >= 20 {
            imageView1.isHidden = false
        }
        if points1.number >= 40 {
            imageView2.isHidden = false
        }
        if points1.number >= 60 {
            imageView3.isHidden = false
        }
        if points1.number >= 80 {
            imageView4.isHidden = false
        }
        if points1.number >= 100 {
            imageView5.isHidden = false
        }
        if points1.number >= 120 {
            imageView6.isHidden = false
        }
        if points1.number >= 140 {
            imageView7.isHidden = false
        }
        /* if pointsTemp >= 45 {
            imageView8.isHidden = false
        }
        if pointsTemp >= 50 {
            imageView9.isHidden = false
        }
        if pointsTemp >= 55 {
            imageView10.isHidden = false
         
    } */
        
        defaults.set(points1.number, forKey: "age")
        
        
        if sender.tag == 11 {
            performSegue(withIdentifier: "recyclingSegue", sender: self)
        }
        
        if sender.tag == 7 {
            performSegue(withIdentifier: "instrucSegue", sender: self)
        }
        
        if sender.tag == 5 {
            performSegue(withIdentifier: "moreTasksSegue", sender: self)
        }
    }

    
}
