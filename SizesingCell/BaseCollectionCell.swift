//
//  BaseCollectionCell.swift
//  SizesingCell
//
//  Created by Albin CR on 1/13/17.
//  Copyright © 2017 Albin CR. All rights reserved.
//

import Foundation
import  UIKit

class BaseCollectionCell: UICollectionViewCell {
    
    
    func calculateHeight(targetSize: CGSize)->CGSize {
        
        var changeSize = targetSize
        changeSize.width = targetSize.width
        let widthConstraint = NSLayoutConstraint(item: self.contentView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant:changeSize.width)
        contentView.addConstraint(widthConstraint)
        //TODO: - Find layout if needed is causing constrain error in swift 3 ??
        //        self.setNeedsUpdateConstraints()
        //        self.updateConstraintsIfNeeded()
        //        self.setNeedsLayout()
        //        self.layoutIfNeeded()
        var size = UILayoutFittingCompressedSize
        size.width = changeSize.width
        let someSize = self.contentView.systemLayoutSizeFitting(size, withHorizontalFittingPriority: 1000, verticalFittingPriority: 250)
        
        contentView.removeConstraint(widthConstraint)
        
        return someSize
    }
    
    func configureData(data:Any?){
        
    }
    
    
}
