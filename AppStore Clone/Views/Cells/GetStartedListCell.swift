//
//  GetStartedListCellCollectionViewCell.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 5/24/18
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit
import CoreMotion

class GetStartedListCell: BaseRoundedCardCell {
    
    /// ImageView
    @IBOutlet private weak var uiImgViewGetStartedList: UIImageView!
    
    /// Overlay View
    @IBOutlet private weak var uiViewOverLay: UIView!
    
    /// MARK - Factory Method
    internal static func dequeue(fromCollectionView collectionView: UICollectionView, atIndexPath indexPath: IndexPath) -> GetStartedListCell {
        guard let cell: GetStartedListCell = collectionView.dequeueReusableCell(indexPath: indexPath) else {
            fatalError("Failed to dequeue GetStartedListCell.")
        }
        return cell
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        uiImgViewGetStartedList.layer.cornerRadius = 14.0
        uiViewOverLay.layer.cornerRadius = 14.0
    }
}
