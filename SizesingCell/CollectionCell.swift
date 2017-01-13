//
//  CollectionCell.swift
//  SizesingCell
//
//  Created by Albin CR on 1/13/17.
//  Copyright © 2017 Albin CR. All rights reserved.
//

import UIKit

class CollectionCell: BaseCollectionCell{
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    
    override func configureData(data: Any?) {
        super.configureData(data: data)
        
        //        if let labelData = data  as? LabelData{
        //
        //            self.label1.text = labelData.label1
        //            self.label2.text = labelData.label2
        //
        //
        //        }
        
        
        //        if let labelData = data  as? LabelData{
        
        //        DispatchQueue.main.async {
        
        self.label1.backgroundColor = .yellow
        self.label2.backgroundColor = .blue
        self.label2.layer.masksToBounds = true
        self.label1.text = "wadgwagdhjwagjdhgwagdhjwagjdgjwagdgwajhgdhgwahjgdhwjg dahwgdhwa hd ghawdgwa..1"
        self.label2.text = "awdghawrdfwaghfdghwfgahd awgdfghawf ghdf awdh ghwajgdjhghjawg dh gwdhwagdjhwa ghjaw...2"
        self.label2.numberOfLines = 0
        self.label2.lineBreakMode = .byWordWrapping
        
        self.contentView.layoutIfNeeded()
        self.contentView.setNeedsLayout()
                DispatchQueue.main.async {
        let path = UIBezierPath(roundedRect:self.label2.bounds, byRoundingCorners:[.topRight, .topLeft], cornerRadii: CGSize(width: 15, height: 15))
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        self.label2.layer.mask = maskLayer
        
                        }
        //            }
        
        //        }
        
        
    }
    
    
    
    
}
