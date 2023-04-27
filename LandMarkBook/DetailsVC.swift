//
//  DetailsVC.swift
//  LandMarkBook
//
//  Created by Evans Wanyoike on 27/04/2023.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var landMarkLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedName = ""
    var selectedImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        landMarkLabel.text = selectedName
        imageView.image = selectedImage

    }
    


}
