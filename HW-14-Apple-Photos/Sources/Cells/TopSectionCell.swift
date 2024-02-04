//
//  TopSectionCell.swift
//  HW-14-Apple-Photos
//
//  Created by Arthur Sh on 04.02.2024.
//

import UIKit

class TopSectionCell: UICollectionViewCell {
    static let identifier = "TopSectionCell"
    
    // MARK: Ui
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        
        image.layer.cornerRadius = 4
        image.layer.masksToBounds = true

        
        return image
    }()
    
    private lazy var favIcon: UIImageView = {
        let image = UIImage(systemName: "heart.fill")
        let imageView = UIImageView(image: image)
        imageView.tintColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private lazy var albumTitle: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "WhiteOnDark")
        label.font = .systemFont(ofSize: 14, weight: .regular)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var albumCountLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.textColor = .systemGray
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    // MARK: - Inits
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Layout
    
    private func setupHierarchy() {
        addSubview(image)
        addSubview(favIcon)
        addSubview(albumTitle)
        addSubview(albumCountLabel)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: topAnchor),
            image.rightAnchor.constraint(equalTo: rightAnchor),
            image.bottomAnchor.constraint(equalTo: bottomAnchor),
            image.leftAnchor.constraint(equalTo: leftAnchor),
            
            
            favIcon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            favIcon.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            
            albumTitle.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 20),
            albumTitle.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            albumCountLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 35),
            albumCountLabel.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func configure(with model: PhotosModel) {
        switch model.cellName {
        case "Favourites":
            image.image = UIImage(named: model.imageName)
            albumTitle.text = model.cellName
            albumCountLabel.text = model.imageCount
            
        default:
            image.image = UIImage(named: model.imageName)
            favIcon.isHidden = true
            albumTitle.text = model.cellName
            albumCountLabel.text = model.imageCount
        }
    }
    
}

#Preview {
    MainViewController()
}

