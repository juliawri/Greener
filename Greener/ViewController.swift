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
    
    //declaring UIScrollView and UIView
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    var defaults = UserDefaults.standard
    
    var pointsObj = Points()
    

    // declaring "Greener" label
    var greenerLabel = UILabel()

   //declaring points labels
    var titleLabel = UILabel()
    
    //declaring "Suggested Actions" label
    var suggLabel = UILabel()
    
    //declaring first points buttons
    var score1Button1 = UIButton()
    var score1Button2 = UIButton()
    var score1Button3 = UIButton()
    
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
    var purpleFlower: UIImageView = {
           let thePurpleFlower = UIImageView()
           thePurpleFlower.image = UIImage(named: "purpleflower")
           return thePurpleFlower
        }()
    
    //declaring red flower image
    var redFlower: UIImageView = {
           let theRedFlower = UIImageView()
           theRedFlower.image = UIImage(named: "redflower")
           return theRedFlower
        }()
    
    //declaring orange flower image
    var orangeFlower: UIImageView = {
           let theOrangeFlower = UIImageView()
           theOrangeFlower.image = UIImage(named: "orangeflower")
           return theOrangeFlower
        }()
    
    //declaring bee image
    var bee: UIImageView = {
           let theBee = UIImageView()
           theBee.image = UIImage(named: "bee")
           return theBee
        }()
    
    //declaring caterpillar image
    var caterpillar: UIImageView = {
           let theCaterpillar = UIImageView()
           theCaterpillar.image = UIImage(named: "caterpillar")
           return theCaterpillar
        }()
    
    //declaring snail image
    var snail: UIImageView = {
           let theSnail = UIImageView()
           theSnail.image = UIImage(named: "snail")
           return theSnail
        }()
    
    //declaring slug image
    var slug: UIImageView = {
           let theSlug = UIImageView()
           theSlug.image = UIImage(named: "slug")
           return theSlug
        }()
    
    //declaring ant image
    var ant: UIImageView = {
           let theAnt = UIImageView()
           theAnt.image = UIImage(named: "ant")
           return theAnt
        }()
    
    //declaring ladybug image
    var ladybug: UIImageView = {
           let theLadybug = UIImageView()
           theLadybug.image = UIImage(named: "ladybug")
           return theLadybug
        }()
    
    //declaring beetle image
    var beetle: UIImageView = {
           let theBeetle = UIImageView()
           theBeetle.image = UIImage(named: "beetle")
           return theBeetle
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
        //saving number of points
        pointsObj.number = defaults.integer(forKey: "age")
        // makes "Search" title on SearchViewController large
        navigationController?.navigationBar.prefersLargeTitles = true

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let scrollView = UIScrollView(frame: view.bounds)
        view.addSubview(scrollView)

//purple flower image
        scrollView.addSubview(purpleFlower)
        purpleFlower.frame = CGRect(x: (self.view.frame.width / 2) + 40, y: 700, width: 160, height: 200)
        //setting if image is hidden
        if pointsObj.number < 20 {
            purpleFlower.isHidden = true
        }
    
//redflower image
        scrollView.addSubview(redFlower)
        redFlower.frame = CGRect(x: (self.view.frame.width / 2) - 233, y: 700, width: 160, height: 200)
        //setting if image is hiddem
        if pointsObj.number < 40 {
            redFlower.isHidden = true
        }

//orange flower image
        scrollView.addSubview(orangeFlower)
        orangeFlower.frame = CGRect(x: (self.view.frame.width / 2) + 10, y: 0, width: 200, height: 160)
        //setting if image is hidden
        if pointsObj.number < 60 {
            orangeFlower.isHidden = true
        }

//bee image
        scrollView.addSubview(bee)
        bee.frame = CGRect(x: (self.view.frame.width / 2) - 200, y: 425, width: 160, height: 160)
        //setting if image is hidden
        if pointsObj.number < 80 {
            bee.isHidden = true
        }

//caterpillar image
        caterpillar.transform = caterpillar.transform.rotated(by: .pi * 1.5)
        scrollView.addSubview(caterpillar)
        caterpillar.frame = CGRect(x: (self.view.frame.width / 2) + 112, y: 400, width: 160, height: 200)
        //setting if image is hiddem
        if pointsObj.number < 100 {
            caterpillar.isHidden = true
        }
    

//snail image
        scrollView.addSubview(snail)
        snail.transform = caterpillar.transform.rotated(by: .pi * 1.95)
        snail.frame = CGRect(x: (self.view.frame.width / 2) + 109 , y: 150, width: 160, height: 145)
        //setting if image hidden
        if pointsObj.number < 120 {
            snail.isHidden = true
        }

//slug image
        scrollView.addSubview(slug)
        slug.transform = slug.transform.rotated(by: .pi + 1.5)
        slug.frame = CGRect(x: (self.view.frame.width / 2) - 165, y: 150, width: 160, height: 160)
        slug.isHidden = true

//ant image
        scrollView.addSubview(ant)
        ant.frame = CGRect(x: (self.view.frame.width / 2) + 85, y: 550, width: 160, height: 200)
        ant.isHidden = true

//ladybug image
        scrollView.addSubview(ladybug)
        ladybug.frame = CGRect(x: (self.view.frame.width / 2) + 85, y: 550, width: 160, height: 200)
        ladybug.isHidden = true

//beetle image
        scrollView.addSubview(beetle)
        beetle.frame = CGRect(x: (self.view.frame.width / 2) + 85, y: 550, width: 160, height: 200)
        beetle.isHidden = true
   
//"Greener" Label
        greenerLabel.frame = CGRect(x: (self.view.frame.width / 2) - 150, y: 60, width: 300, height: 87.5)
        greenerLabel.text = "Greener"
        scrollView.addSubview(greenerLabel)
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
        
// circular title label with number of points at top of page
        titleLabel.frame = CGRect(x: (self.view.frame.width / 2) - 100, y: 162.5, width: 200, height: 200)
        titleLabel.text = "\(pointsObj.number)\n Points"
        scrollView.addSubview(titleLabel)
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
        scrollView.addSubview(suggLabel)
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
        scrollView.addSubview(score1Button3)
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
        scrollView.addSubview(score1Button2)
        //framing
        score1Button2.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 400, width: 25, height: 75)
        //background color
        score1Button2.backgroundColor = UIColorFromHex(rgbValue: 0x749668, alpha: 1)
        //tag is used for differentiating buttons
        score1Button2.tag = 1

//first score right button with rounded corners
        scrollView.addSubview(score1Button1)
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
        scrollView.addSubview(score2Button3)
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
        scrollView.addSubview(score2Button2)
        //framing
        score2Button2.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 500, width: 25, height: 75)
        //background color
        score2Button2.backgroundColor = UIColorFromHex(rgbValue: 0x749668, alpha: 1)
        //tag is used for differentiating buttons
        score2Button2.tag = 2

//second score right button with rounded corners
        scrollView.addSubview(score2Button1)
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
        scrollView.addSubview(score3Button3)
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
        scrollView.addSubview(score3Button2)
        //framing
        score3Button2.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 600, width: 25, height: 75)
        //background color
        score3Button2.backgroundColor = UIColorFromHex(rgbValue: 0x749668, alpha: 1)
        //tag is used for differentiating buttons
        score3Button2.tag = 3

//third score right button with rounded corners
        scrollView.addSubview(score3Button1)
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
        scrollView.addSubview(moreOptionsLabel)
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
        scrollView.addSubview(moreOptionsButton)
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
        scrollView.addSubview(instrucButton)
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
        
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 2200)
    }
//function for when first button is tapped
    @objc func buttonAction(sender: UIButton!) {
        if sender.tag == 1 {
            score1Button1.backgroundColor = UIColorFromHex(rgbValue: 0xAFD1A2)
            score1Button2.backgroundColor = UIColorFromHex(rgbValue: 0xAFD1A2)
            pointsObj.number = pointsObj.number + 5
            titleLabel.text = "\(pointsObj.number)\n Points"
        }
    
        if sender.tag == 2 {
            score2Button1.backgroundColor = UIColorFromHex(rgbValue: 0xAFD1A2)
            score2Button2.backgroundColor = UIColorFromHex(rgbValue: 0xAFD1A2)
            pointsObj.number = pointsObj.number + 10
            titleLabel.text = "\(pointsObj.number)\n Points"
        }
    
        if sender.tag == 3 {
            score3Button1.backgroundColor = UIColorFromHex(rgbValue: 0xAFD1A2)
            score3Button2.backgroundColor = UIColorFromHex(rgbValue: 0xAFD1A2)
            pointsObj.number = pointsObj.number + 15
            titleLabel.text = "\(pointsObj.number)\n Points"
        }
        
        
        if pointsObj.number >= 20 {
            purpleFlower.isHidden = false
        }
        
        if pointsObj.number >= 40 {
            redFlower.isHidden = false
        }
        
        if pointsObj.number >= 60 {
            orangeFlower.isHidden = false
        }
        
        if pointsObj.number >= 80 {
            bee.isHidden = false
        }
        
        if pointsObj.number >= 100 {
            caterpillar.isHidden = false
        }
        
        if pointsObj.number >= 120 {
            snail.isHidden = false
        }
        
        if pointsObj.number >= 140 {
            slug.isHidden = false
        }
        /* if pointsObj.number >= 45 {
            ant.isHidden = false
        }
        if pointsObj.number >= 50 {
            ladybug.isHidden = false
        }
        if pointsObj.number >= 55 {
            beetle.isHidden = false
         
    } */
        
        defaults.set(pointsObj.number, forKey: "age")
        
        
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
