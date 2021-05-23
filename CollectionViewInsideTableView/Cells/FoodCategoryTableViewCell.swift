//
//  FoodCategoryTableViewCell.swift
//  CollectionViewInsideTableView
//
//  Created by Mr. Naveen Kumar on 24/05/21.
//

import UIKit

class FoodCategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var foodSubCategoryCollectionView: UICollectionView!
    
    var foodDataArray = [FoodModel]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        foodDataArray = FoodData.shared.getFoodData()
        foodSubCategoryCollectionView.dataSource = self
        foodSubCategoryCollectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
