//
//  ViewController.swift
//  LandMarkBook
//
//  Created by Evans Wanyoike on 27/04/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    
    

    @IBOutlet weak var tableView: UITableView!
    var landMarkNames = [String]()
    var landMarkImages = [UIImage]()
    var chosenLandMarkName = ""
    var chosenLandMarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
       
        landMarkNames.append("Eiffel Tower")
        landMarkNames.append("Great Wall of China")
        landMarkNames.append("Pyramids of Giza")
        landMarkNames.append("Sydney OPera House")
        landMarkNames.append("Taj Mahal")
        landMarkNames.append("New York - Times Square")
        
       
        landMarkImages.append(UIImage(named: "Eiffel.jpg")!)
        landMarkImages.append(UIImage(named: "great_Wall.jpg")!)
        landMarkImages.append(UIImage(named: "pyramids.png")!)
        landMarkImages.append(UIImage(named: "Sydney_Opera_House.jpg")!)
        landMarkImages.append(UIImage(named: "taj_mahal.jpg")!)
        landMarkImages.append(UIImage(named: "times_square.jpg")!)

        
    }
    
    // numb
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landMarkNames.count
    }
    // cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
//        cell.textLabel?.text = "Evans"
        var content = cell.defaultContentConfiguration()
//        content.image = landMarkImages[indexPath.row]
        content.text = landMarkNames[indexPath.row]
        cell.contentConfiguration = content
        return  cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandMarkName = landMarkNames[indexPath.row]
        chosenLandMarkImage = landMarkImages[indexPath.row]
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedName = chosenLandMarkName
            destinationVC.selectedImage = chosenLandMarkImage
        }
    }
    


}

