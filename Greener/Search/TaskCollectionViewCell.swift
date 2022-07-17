//
//  TaskCollectionViewCell.swift
//  Greener
//
//  Created by Julia Wright on 2022-07-16.
//

import UIKit

class TaskCollectionViewCell: UICollectionViewCell {
    static let identfier = "TaskCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .white
        imageView.image = UIImage(systemName: "music.quarternote.3", withConfiguration: UIImage.SymbolConfiguration(pointSize: 50, weight: .regular))
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        return label
    }()
    
    private let colors: [UIColor] = [
        .systemPink,
        .systemRed,
        .systemBlue,
        .systemGray,
        .systemCyan,
        .systemOrange
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(label)
        contentView.addSubview(imageView)
        contentView.layer.cornerRadius = 8
        contentView.layer.masksToBounds = true
    }
    
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
        imageView.frame = CGRect(x: contentView.frame.width/2, y: 0, width: contentView.frame.width/2, height: contentView.frame.height/2)
    }
    
    func configure(with title: String) {
        label.text = title
        contentView.backgroundColor = colors.randomElement()
    }
}
