//
//  ViewController.swift
//  CollectionViewCell
//
//  Created by Davit Hovsepyan on 25.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var models = [Model]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "First", imageName: "images-1"))
        models.append(Model(text: "Second", imageName: "images-2"))
        models.append(Model(text: "Third", imageName: "images-3"))
        models.append(Model(text: "Forth", imageName: "images-4"))
        
        
        
        tableView.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
    }
}
// MARK functions
extension ViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
       
        cell.configure(with: models)
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
}
