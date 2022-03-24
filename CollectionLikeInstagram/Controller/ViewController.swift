//
//  ViewController.swift
//  CollectionLikeInstagram
//
//  Created by Никита Коголенок on 24.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - GUI Variable
    private var collectionView: UICollectionView?

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDelegate()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        collectionView?.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: 150).integral
    }
    
    // MARK: - Methods
    func createDelegate() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 150, height: 150)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView?.showsHorizontalScrollIndicator = false
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.backgroundColor = .red
        guard let myCollection = collectionView else { return }
        view.addSubview(myCollection)
    }
}
