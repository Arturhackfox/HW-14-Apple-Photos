//
//  ViewController.swift
//  HW-14-Apple-Photos
//
//  Created by Arthur Sh on 02.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Ui
    
    private lazy var collectionView: UICollectionView = {
        let layout = createLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.dataSource = self
        collection.delegate = self
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { sectionIndex, _ in
            switch sectionIndex {
            case 0:
                // Section -> Group -> item -> size
                  let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                        heightDimension: .fractionalHeight(1))
                  let item = NSCollectionLayoutItem(layoutSize: itemSize)
              item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 35, trailing: 5)
                  
              let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2.2),
                                                     heightDimension: .estimated(190))
              
              let topFourGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: item, count: 2)
              
              let section = NSCollectionLayoutSection(group: topFourGroup)
              section.orthogonalScrollingBehavior = .paging
              section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0)

              
              return section
                
            default:
                // Section -> Group -> item -> size
                  let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                        heightDimension: .fractionalHeight(1))
                  let item = NSCollectionLayoutItem(layoutSize: itemSize)
              item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 35, trailing: 5)
                  
              let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2.2),
                                                     heightDimension: .estimated(190))
              
              let topFourGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: item, count: 1)
              
              let section = NSCollectionLayoutSection(group: topFourGroup)
              section.orthogonalScrollingBehavior = .continuous
              section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0)

              
              return section
            }
            
        }
    }
    
    private func setupView() {
        view.backgroundColor = .systemGreen
        title = "Albums"
        navigationController?.navigationBar.prefersLargeTitles = true

    }
    
    private func setupHierarchy() {
        view.addSubview(collectionView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor)
        ])
    }
    
    
    // MARK: - Actions
    
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .systemBlue
        
        return cell
    }
    
}

#Preview {
    ViewController()
}

