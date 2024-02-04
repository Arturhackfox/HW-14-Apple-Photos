//
//  HeaderCustom.swift
//  HW-14-Apple-Photos
//
//  Created by Arthur Sh on 04.02.2024.
//

import UIKit

class CustomHeader: UICollectionReusableView {
    // MARK: - Constants
    
    static let identifier = "CustomHeader"
    
    // MARK: - Ui
    
    var headerLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var separator: UIView = {
       let view = UIView()
        view.backgroundColor = .systemGray6
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    // MARK: - Inits
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Layout
    
    private func setupView() {
        clipsToBounds = true
    }
    
    private func setupHierarchy() {
        addSubview(headerLabel)
        addSubview(separator)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            headerLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            separator.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            separator.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 1),
            separator.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 100),
            separator.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}

#Preview {
    MainViewController()
}
