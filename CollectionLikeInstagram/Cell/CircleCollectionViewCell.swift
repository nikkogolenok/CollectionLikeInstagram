//
//  CircleCollectionViewCell.swift
//  CollectionLikeInstagram
//
//  Created by Никита Коголенок on 24.03.22.
//

import UIKit

class CircleCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Variable
    static let identifier = "CircleCollectionViewCell"
    
    // MARK: - GUI Variable
    private let myImageView: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 150 / 2
        image.backgroundColor = .blue
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.link.cgColor
        return image
    }()
    
    // MARK: - Life Cycle
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        myImageView.image = nil
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(myImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Methods
    public func configure(with name: String) {
        myImageView.image = UIImage(named: name)
    }
}
