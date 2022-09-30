//
//  ViewController.swift
//  Recipes_Book
//
//  Created by Muharrem Köroğlu on 30.09.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var foodImageArray = ["ayran","baklava","borek","delight","karniyarik","kebab","kunefe","lahmacun","lentil","meatballs","menemen","rice","salad","sutlac","tea"]
    var foodNameArray = ["Turkish Yogurt Drink","Turkish Baklava","Turkish Borek","Turkish Delight","Turkish Stuffed Eggplant","Turkish Kebab","Kunefe","Lahmacun","Turkish Lentil Soup","Turkish Meatballs","Menemen","Turkish Rice","Turkish Salad","Turkish Rice Pudding","Turkish Tea"]
    var foodDescArray = [
        
        "Healthy and super easy to make, ayran, or Turkish yogurt drink, is so refreshing to have on a hot summer day.You’ll only need water, yogurt, and sea salt to make this nutritious drink. Everything’s ready in 5 minutes. Using a blender isn’t necessary unless you want to add other ingredients like grated cucumber, ground cumin, or chopped mint for flavoring.For the best consistency, the recipe instructs to follow the 1:1 ratio of yogurt and water.Of course, you can make adjustments depending on your preferred thickness for the drink.",
        "The world-famous baklava will reach your dining table in less than two hours.While making this dessert takes some time, it’s worth the wait with all its buttery and crunchy goodness.Well-prepared baklava is sweet and moist, oozing with sugary syrup infused with citrusy lemon.This recipe requires some serious layering work using thin sheets of phyllo dough and finely chopped nuts.The perfect texture is achieved once you pour the chilled sugar syrup to the hot oven-baked baklava.",
        "Borek is another delightful pastry dish from Turkey. Typical fillings include cheese, potatoes, and spinach, but it’s traditionally stuffed with meat, too. Borek has different varieties, and this recipe yields “sigara boregi” or cigar borek. It’s a simple yet delicious mid-day snack, best served with tea or salad on the side. ",
        "Turkish delights are sweet little squares with a jelly-like texture. This dessert is bound to become a hit among kids and adults. Traditionally, these gummy sweets carry the flavors of Bergamot orange, rosewater, and lemon. Fruits or nuts are also added to amp up the flavors. However, this recipe will instruct you to make rose-flavored delights only. But really, no one will stop you if you want to make a box of assorted Turkish delights! ",
        "Stuffed eggplant, or karniyarik, is a well-loved dish in Turkey because of the flavor-packed bite it gives. Imagine an eggplant filled with minced meat mixture, then baked to perfection. The filling is smoky, garlicky, and full of tomato goodness! Try making karniyarik if you want to include eggplants in your weekly meal plan. While authentic karniyarik is usually fried, this recipe makes a healthier version by instructing you to bake it in the oven.",
        "The perfect blend of black pepper, cumin, garlic powder, isot pepper, oregano, and salt will create a comforting Turkish meal. Once you’re done cooking the meat, wrap them up in a tortilla bread along with onions, shepherd’s salad, and fries. ",
        "Cheesy meets sugary in this Turkish dessert. Kunefe is often served at kebab restaurants, a sweet follow-up dish after eating some doner kebab. Kunefe has a crisp outer layer and a gooey, cheesy inside. Rosewater, lemon juice, and nutmeg are added to the mix to intensify the flavors. ",
        "Lahmacun means “dough with meat,” so expect a thin, crispy pizza topped with minced meat, veggies, and lots of herbs. Creating homemade pizza isn’t always time-consuming, especially when using store-bought pizza dough. For the best Turkish pizza, focus on creating a tasty minced meat mixture. ",
        "Turkish lentil soup is velvety smooth, nutritious, and oh-so-spicy. It gives you the much-needed heat and the best warming flavors, perfect for the wintertime. Chunks of plain croutons add bulk to this hearty soup, while a few drops of lemon brightens up all the flavors.",
        "Kofta, or Turkish meatballs, are so much better than the store-bought version. They’re perfectly tender and are infused with flavors from cumin, dried thyme, black pepper, and salt. For this recipe, you can use 100% beef or lamb or a combination of both. If you want to heat things up, add chili powder or red pepper flakes to the kofta spice mix. Serve these meatballs with pita, salads, and dips for a complete meal.",
        "Brighten up your morning by having scrambled eggs the Turkish way! Menemen is a well-prepared dish for a traditional Turkish breakfast. It looks complicated at first, but everything you’ll need is just sitting in your kitchen pantry. Plus, the prep time is quick, too. Menemen, in its basic form, is just eggs scrambled with peppers, tomatoes, onions, and seasonings. Sprinkle with chili flakes and feta cheese for an extra flavor boost. Make sure to serve these eggs with crusty bread on the side. You wouldn’t want the delicious pan sauce to go to waste!",
        "Skip the plain ol’ white rice because this Turkish version will become your new favorite! It pairs well with various dishes, from meats to stews to vegetables, absorbing all their flavors. Using baldo or arborio rice, you can make a bowl of fluffy rice with a nutty flavor and aroma.Proper Turkish rice is also buttery, so make sure to cook it in butter first. ",
        "Turkish salad is a summer meal loved by many Turks. The salad combines a couple of pantry staples like cucumbers, tomatoes, bell peppers, lemon juice, and parsley. Refreshing and zesty in every bite, Turkish salad is super easy to make, with a prep time of 15 minutes! Just mix everything in a bowl, freeze for an hour, and serve.",
        "Made with heavy cream, short-grain rice, and milk, this rice pudding is light, easy to eat, and not overly sweet. In short, it’s the perfect dessert to have any time of the day! This pudding mixture is cooked on the stove and then transferred to oven-safe bowls for baking. You’ll know it’s done when the top is slightly burned, so it’ll look pretty close to creme brulee.The pudding’s caramel-y taste is already heavenly, but you can take it up a notch by sprinkling ground cinnamon on top!",
        "Boil dried lemon peels with water and honey, and you’ll get a slightly sweet and citrusy Turkish tea. It’s super easy and super tasty, and you can make it any time of the day. After all, in Turkey, people consume cups of tea all day long. And because this recipe requires lemon peels, you’re bound to get a boost of vitamins and nutrients.",
        
    ]
    
    var foodImage = ""
    var foodName = ""
    var foodDesc = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = "\(foodNameArray[indexPath.row])"
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        foodImage = foodImageArray[indexPath.row]
        foodName = foodNameArray [indexPath.row]
        foodDesc = foodDescArray[indexPath.row]
        performSegue(withIdentifier: "toRecipeVC", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toRecipeVC" {
            let destinationVC = segue.destination as! RecipesViewController
            destinationVC.foodName = foodName
            destinationVC.foodImage = foodImage
            destinationVC.desc = foodDesc
            
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            self.foodNameArray.remove(at: indexPath.row)
            self.foodImageArray.remove(at: indexPath.row)
            self.foodDescArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    
    

}

