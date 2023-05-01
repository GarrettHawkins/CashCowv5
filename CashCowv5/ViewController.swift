//
//  ViewController.swift
//  CashCowv5
//
//  Created by Hawkins, Garrett - Student on 5/1/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    //Will need to pull from API
    var stocks = ["S&P 500", "NASDAQ", "Dow Jones"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = stocks[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.dataSource = self
    }


}

