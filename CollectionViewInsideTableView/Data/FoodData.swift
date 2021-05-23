//
//  FoodData.swift
//  CollectionViewInsideTableView
//
//  Created by Mr. Naveen Kumar on 24/05/21.
//

import Foundation
import UIKit

class FoodData: NSObject {
 
    static let shared = FoodData()
    
    func getFoodData() -> [FoodModel] {
        var foodData = [FoodModel]()
        foodData = [
            FoodModel(sectionType: "Fruits", foodImages: ["daal","daal1","roti","sabji","salad","samosha","star"], foodNames: ["Daal","Daal","Roti","Sabji","Salad","Samosha","Star"]),
            FoodModel(sectionType: "Vegetables", foodImages: ["roti","sabji","salad","daal","daal1"], foodNames: ["Roti","Sabji","Salad","Daal","Daal1"]),
            FoodModel(sectionType: "Non-Veg", foodImages: ["daal","daal1","roti","sabji","salad","samosha","star"], foodNames: ["Daal","Daal","Roti","Sabji","Salad","Samosha","Star"]),
            FoodModel(sectionType: "Panner", foodImages: ["roti","sabji","salad","daal","daal1"], foodNames: ["Roti","Sabji","Salad","daal","Daal1"]),
            FoodModel(sectionType: "Potato", foodImages: ["daal","daal1","roti","sabji","salad","samosha","star"], foodNames: ["Daal","Daal","Roti","Sabji","Salad","Samosha","Star"]),
            FoodModel(sectionType: "Mango", foodImages: ["roti","sabji","salad","daal","daal1"], foodNames: ["Roti","Sabji","Salad","daal","Daal1"]),
            FoodModel(sectionType: "PineApple", foodImages: ["roti","sabji","salad","daal","daal1"], foodNames: ["Roti","Sabji","Salad","daal","Daal1"]),
            FoodModel(sectionType: "Grapes", foodImages: ["roti","sabji","salad"], foodNames: ["Roti","Sabji","Salad"]),
            FoodModel(sectionType: "Orange", foodImages: ["daal","daal1","roti","sabji","salad","samosha","star"], foodNames: ["Daal","Daal","Roti","Sabji","Salad","Samosha","Star"])
        ]
        return foodData
    }
}
