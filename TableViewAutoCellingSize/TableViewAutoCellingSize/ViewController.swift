//
//  ViewController.swift
//  TableViewAutoCellingSize
//
//  Created by Abid AB on 29/1/20.
//  Copyright © 2020 Abid AB. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arr = ["The Ab", "Lol", "In order for the table view to do this, you must also provide an estimatedRowHeight. In this case, 600 is just an arbitrary value that works well in this particular instance. For your own projects, you should pick a value that better conforms to the type of data that you’ll display."]

    
    @IBOutlet weak var expandTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        expandTableView.dataSource = self
        expandTableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Tcell:expendCellTableViewCell = expandTableView.dequeueReusableCell(withIdentifier: "exTcell", for: indexPath) as! expendCellTableViewCell
        Tcell.bioLabel.text = arr[indexPath.row]
        
        return Tcell
    }


}

