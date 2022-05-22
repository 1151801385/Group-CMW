//
//  TimeCollectionViewCell.swift
//  A3
//
//  Created by Wangyang on 2022/5/13.
//

import UIKit

class TimeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleLab: UILabel!
    
    func setup(with movieTime: MovieTime) {
        titleLab.text = movieTime.time
        if movieTime.isSel {
            titleLab.font = UIFont.boldSystemFont(ofSize: 18)
            titleLab.textColor = UIColor.systemRed
        }else{
            titleLab.font = UIFont.systemFont(ofSize: 16)
            titleLab.textColor = UIColor.black
        }
        
    }
}
