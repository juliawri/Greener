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
    
    // we have to grab this view context to be able to work with Core Data
      /*if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

        // we are creating a new ToDoCD object here, naming it toDo
         points = PointsCD(entity: PointsCD.entity(), insertInto: context)

        try? context.save()

        navigationController?.popViewController(animated: true)
      } */
          
    var titleLabel = UILabel()
    var score1Button1 = UIButton()
    var score1Button2 = UIButton()
    var scoreLabel1 = UILabel()
    
    var score2Button1 = UIButton()
    var score2Button2 = UIButton()
    var scoreLabel2 = UILabel()
    
    
    //declaring purple flower image
    var imageView1: UIImageView = {
           let theImageView1 = UIImageView()
           theImageView1.image = UIImage(named: "purpleflower")
           return theImageView1
        }()
    
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

//purple flower image
        view.addSubview(imageView1)
        imageView1.frame = CGRect(x: (self.view.frame.width / 2) + 85, y: 550, width: 160, height: 200)
        imageView1.isHidden = true

        
// circular title label at top of page
        titleLabel.frame = CGRect(x: (self.view.frame.width / 2) - 100, y: 150, width: 200, height: 200)
        titleLabel.text = "\(points)\n Points"
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
        scoreLabel1.frame = CGRect(x: (self.view.frame.width / 2) - 117.5, y: 400, width: 200, height: 75)
        scoreLabel1.text = "recycle 5 times"
        self.view.addSubview(scoreLabel1)
        //background color
        scoreLabel1.backgroundColor = UIColorFromHex(rgbValue: 0x10440C, alpha: 1)
        //text alignment
        scoreLabel1.textAlignment = .center
        //text colour
        scoreLabel1.textColor = UIColorFromHex(rgbValue: 0xDDE4DD, alpha: 1)
        //changing font
        scoreLabel1.font = UIFont(name: "Avenir Next", size: 18)
        //rounding corners
        scoreLabel1.layer.cornerRadius =  15
        scoreLabel1.layer.masksToBounds = true

        
//first score button with square corners
        view.addSubview(score1Button2)
        //framing
        score1Button2.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 400, width: 25, height: 75)
        //background color
        score1Button2.backgroundColor = UIColorFromHex(rgbValue: 0x4E8D7E, alpha: 1)
        //tag is used for differentiating buttons
        score1Button2.tag = 1

//first score button with rounded corners
        view.addSubview(score1Button1)
        //framing
        score1Button1.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 400, width: 50, height: 75)
        //background color
        score1Button1.backgroundColor = UIColorFromHex(rgbValue: 0x4E8D7E, alpha: 1)
        //title
        score1Button1.setTitle("+", for: .normal)
        //making the button clickable
        score1Button1.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        //rounding corners
        score1Button1.layer.cornerRadius = 15
        score1Button1.layer.masksToBounds = true
        //tag is used for differentiating buttons
        score1Button1.tag = 1

        
        
//second score label
        scoreLabel2.frame = CGRect(x: (self.view.frame.width / 2) - 117.5, y: 500, width: 200, height: 75)
        scoreLabel2.text = "recycle 5 times"
                self.view.addSubview(scoreLabel2)
        //background color
        scoreLabel2.backgroundColor = UIColorFromHex(rgbValue: 0x10440C, alpha: 1)
        //text alignment
        scoreLabel2.textAlignment = .center
        //text colour
        scoreLabel2.textColor = UIColorFromHex(rgbValue: 0xDDE4DD, alpha: 1)
        //changing font
        scoreLabel2.font = UIFont(name: "Avenir Next", size: 18)
        //rounding corners
        scoreLabel2.layer.cornerRadius =  15
        scoreLabel2.layer.masksToBounds = true

                
//second score button with square corners
        view.addSubview(score2Button2)
        //framing
        score2Button2.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 500, width: 25, height: 75)
        //background color
        score2Button2.backgroundColor = UIColorFromHex(rgbValue: 0x4E8D7E, alpha: 1)
        //tag is used for differentiating buttons
        score2Button2.tag = 2

//second score button with rounded corners
        view.addSubview(score2Button1)
        //framing
        score2Button1.frame = CGRect(x: (self.view.frame.width / 2) + 67.5, y: 500, width: 50, height: 75)
        //background color
        score2Button1.backgroundColor = UIColorFromHex(rgbValue: 0x4E8D7E, alpha: 1)
        //title
        score2Button1.setTitle("+", for: .normal)
        //making the button clickable
        score2Button1.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        //rounding corners
        score2Button1.layer.cornerRadius = 15
        score2Button1.layer.masksToBounds = true
        //tag is used for differentiating buttons
        score2Button1.tag = 2
    }
        
//function for when first button is tapped
    @objc func buttonAction(sender: UIButton!) {
            if sender.tag == 1 {
                score1Button1.backgroundColor = UIColorFromHex(rgbValue: 0xDCECB0)
                score1Button2.backgroundColor = UIColorFromHex(rgbValue: 0xDCECB0)
            points = points + 5
            titleLabel.text = "\(points)\n Points"
                
            }
            if sender.tag == 2 {
                score2Button1.backgroundColor = UIColorFromHex(rgbValue: 0xDCECB0)
                score2Button2.backgroundColor = UIColorFromHex(rgbValue: 0xDCECB0)
            points = points + 10
            titleLabel.text = "\(points)\n Points"
            }
        
            if points >= 10 {
                imageView1.isHidden = false
            }
        
    
        }
    

    
}
