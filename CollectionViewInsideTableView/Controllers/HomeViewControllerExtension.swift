//
//  HomeViewControllerExtension.swift
//  CollectionViewInsideTableView
//
//  Created by Mr. Naveen Kumar on 24/05/21.
//

import Foundation
import UIKit

 // MARK:- TableView Method
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return foodDataArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = foodDataArray[section].sectionType
        return title
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCategoryCell", for: indexPath) as! FoodCategoryTableViewCell
        cell.foodSubCategoryCollectionView.tag = indexPath.section
        cell.foodSubCategoryCollectionView.reloadData()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}


 // MARK:- CollectionView Method
extension FoodCategoryTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodDataArray[collectionView.tag].foodNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodSubCategoryCell", for: indexPath) as! FoodSubCategoryCollectionViewCell
        let foodImage = foodDataArray[collectionView.tag].foodImages[indexPath.row]
        let foodName = foodDataArray[collectionView.tag].foodNames[indexPath.row]
        cell.foodImageView.image = UIImage(named: foodImage)
        cell.foodNameLabel.text = foodName
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.size.width - 10)/3
        let height = collectionView.frame.size.height
        return CGSize(width: width,  height: height)
    }
    
    
}
