//
//  ViewController.swift
//  CustomTableViewCellWithImage&LabelAction
//
//  Created by Abid AB on 3/2/20.
//  Copyright © 2020 Abid AB. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    
    var image = [#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "6"), #imageLiteral(resourceName: "2")]    //image Literal

    @IBOutlet weak var customTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        customTableView.delegate = self
        customTableView.dataSource = self
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        let cellSpaceHeight:CGFloat = 10
//        return cellSpaceHeight
//    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tImageCell:customTableViewCell = customTableView.dequeueReusableCell(withIdentifier: "tImageCell", for: indexPath)as!customTableViewCell
        tImageCell.tCellImage.image = self.image[indexPath.row]
        
        return tImageCell
    }
    


}

