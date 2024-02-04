//
//  ListCell.swift
//  HW-14-Apple-Photos
//
//  Created by Arthur Sh on 04.02.2024.
//

import UIKit

class ListCell: UICollectionViewListCell {
    static let identifier = "ListCell"
    
    // MARK: Ui
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    
    private lazy var albumTitle: UILabel = {
        let label = UILabel()
        label.textColor = .systemBlue
        label.font = .systemFont(ofSize: 17, weight: .regular)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var albumCountLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textColor = .systemGray
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var lockedImage: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "lock.fill"))
        image.tintColor = .systemGray
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        
        return image
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
        addSubview(albumTitle)
        addSubview(albumCountLabel)
        addSubview(lockedImage)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            image.centerYAnchor.constraint(equalTo: centerYAnchor),
            image.heightAnchor.constraint(equalToConstant: 25),
            image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            image.widthAnchor.constraint(equalToConstant: 25),
            
            albumTitle.centerYAnchor.constraint(equalTo: centerYAnchor),
            albumTitle.leadingAnchor.constraint(equalTo: image.leadingAnchor, constant: 35),
            
            albumCountLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            albumCountLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            lockedImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            lockedImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            lockedImage.widthAnchor.constraint(equalToConstant: 15),
            lockedImage.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func configure(with model: PhotosModel) {
        switch model.isLocked {
        case true:
            image.image = UIImage(systemName: model.imageName)
            albumTitle.text = model.cellName
            albumCountLabel.text = model.imageCount
        case false:
            image.image = UIImage(systemName: model.imageName)
            albumTitle.text = model.cellName
            albumCountLabel.text = model.imageCount
            lockedImage.isHidden = true
        }
        
    }
    
}

#Preview {
    MainViewController()
}