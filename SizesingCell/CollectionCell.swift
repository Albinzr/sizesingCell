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
        self.label1.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
        self.label2.text = "Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, comes from a line in section 1.10.32."
        
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
