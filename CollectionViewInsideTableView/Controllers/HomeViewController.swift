//
//  ViewController.swift
//  CollectionViewInsideTableView
//
//  Created by Mr. Naveen Kumar on 24/05/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var foodDataArray = [FoodModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodDataArray = FoodData.shared.getFoodData()
    }
}


