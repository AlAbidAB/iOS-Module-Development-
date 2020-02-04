//
//  ViewController.swift
//  ADTable
//
//  Created by Training  on 3/12/19.
//  Copyright © 2019 Training . All rights reserved.
//

import UIKit

class MainViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{
    
    var name = ["Abid","Dorin"]

    
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var cstt: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cstt.delegate = self
        cstt.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Tablecell:customTableViewCell = self.cstt.dequeueReusableCell(withIdentifier: "tabcell", for: indexPath)as!customTableViewCell
        Tablecell.uilable.text=name[indexPath.row]
       return Tablecell
        
    }


}

