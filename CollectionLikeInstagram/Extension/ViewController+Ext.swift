//
//  ViewController+Ext.swift
//  CollectionLikeInstagram
//
//  Created by Никита Коголенок on 24.03.22.
//

import UIKit

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CircleCollectionViewCell.identifier, for: indexPath) as? CircleCollectionViewCell else { return UICollectionViewCell() }
        
        cell.configure(with: models[indexPath.row])
        
        return cell
    }
    
    
}
