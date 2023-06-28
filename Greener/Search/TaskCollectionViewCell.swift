//
//  TaskCollectionViewCell.swift
//  Greener
//
//  Created by Julia Wright on 2022-07-16.
//

import UIKit

class TaskCollectionViewCell: UICollectionViewCell {
    
    static let identfier = "TaskCollectionViewCell"


    //declaring id variable
    
    //loading tasks from json file
    let tasks = DataLoader().tasksData
    
    //declaring id button
    //var id = 0
    
    //declaring an instance of the button
    var button: UIButton = {
        //setting properties of button
        var button = UIButton()
        button.isUserInteractionEnabled = true
        button.isEnabled = true
        button.addTarget(TaskCollectionViewCell(), action: Selector(("pressed:")), for: .primaryActionTriggered)
        return button
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .white
        imageView.image = UIImage(systemName: "heart", withConfiguration: UIImage.SymbolConfiguration(pointSize: 50, weight: .regular))
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Avenir Next", size: 18)
        return label
    }()
    
    private let colors: [UIColor] = [
        .systemPink,
        .systemRed,
        .systemBlue,
        .systemGray,
        .systemCyan,
        .systemOrange,
        .systemMint,
        .systemIndigo,
        .systemYellow,
        .systemPurple,
        .systemGreen
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(label)
        contentView.addSubview(imageView)
        contentView.addSubview(button)
        contentView.layer.cornerRadius = 8
        contentView.layer.masksToBounds = true
    
   // }
    //adding function for when button is pressed
    //func pressed(sender: UIButton!) {
    }
    
    //function for when button is tapped
    //@objc func buttonAction(sender: UIButton!) {
       // var id = task
      //  if task.id == "1" {
       //     self.performSegue(withIdentifier: "instrucSegue", sender: self)
        //}
 //   }
    
    required init?(coder: NSCoder){
        fatalError()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        label.text = nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.frame = CGRect(x: 10, y: contentView.frame.height / 2, width: contentView.frame.width - 2, height: contentView.frame.height / 2)
        imageView.frame = CGRect(x: contentView.frame.width/2, y: 5, width: contentView.frame.width/2, height: contentView.frame.height/2)
    }
    
    func configure(with title: String) {
        label.text = title
        contentView.backgroundColor = colors.randomElement()
    }
    
    
}
