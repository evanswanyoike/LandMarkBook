//
//  ViewController.swift
//  LandMarkBook
//
//  Created by Evans Wanyoike on 27/04/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // numb
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    // cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
//        cell.textLabel?.text = "Evans"
        var content = cell.defaultContentConfiguration()
        content.text = "Evans"
        content.secondaryText = "Wanyoike"
        cell.contentConfiguration = content
        return  cell
    }
    


}

