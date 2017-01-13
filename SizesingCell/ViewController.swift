//
//  ViewController.swift
//  SizesingCell
//
//  Created by Albin CR on 1/13/17.
//  Copyright © 2017 Albin CR. All rights reserved.
//

import UIKit

let reuseIdentifier = "CollectionCell"

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let nib = UINib(nibName: "CollectionCell", bundle: nil)
    var sizingCell:CollectionCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(nib, forCellWithReuseIdentifier: reuseIdentifier)
        sizingCell =  nib.instantiate(withOwner: self, options: nil)[0] as? CollectionCell
        
    }
    
    
    // MARK: UICollectionViewDataSource
    
    // MARK: - Section in cell
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    //MARK: - Collection count
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 10
    }
    
    //MARK: - Data -
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        cell.contentView.backgroundColor = UIColor.red
        
        let currentCell = cell as? CollectionCell
        
        currentCell?.configureData(data: nil)
        
        
        return cell
    }
    
    // MARK: - Right space -
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
    {
        return 1
    }
    
    // MARK: - Bottom Space -
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let targetSize =  CGSize(width: self.collectionView.bounds.width, height: (CGFloat.greatestFiniteMagnitude))
        
        sizingCell?.configureData(data: nil)
        
        
        let calculatedSize = sizingCell?.calculateHeight(targetSize: targetSize)
        return calculatedSize!
    }
    
    // MARK: - Selecting cell
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
    }
    
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        self.collectionView.layoutIfNeeded()
//        self.collectionView.setNeedsLayout()
//        let offset = collectionView.contentOffset;
//        let width  = self.view.bounds.size.width;
//        let index     = round(offset.x / width);
//        let newOffset = CGPoint(x: index * size.width, y: offset.y)
        
//        coordinator.animate(alongsideTransition: { (context) in
        
            self.collectionView.collectionViewLayout.invalidateLayout()
        self.collectionView.reloadData()
//            self.collectionView.setContentOffset(newOffset, animated: false)
            
//        }, completion: nil)
    }
    
}

