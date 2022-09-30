//
//  RecipesViewController.swift
//  Recipes_Book
//
//  Created by Muharrem Köroğlu on 30.09.2022.
//

import UIKit

class RecipesViewController: UIViewController {
    
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var foodName = ""
    var foodImage = ""
    var desc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodNameLabel.text = foodName
        foodImageView.image = UIImage(named: "\(foodImage)")
        descriptionLabel.text = desc

        
    }
    


}
