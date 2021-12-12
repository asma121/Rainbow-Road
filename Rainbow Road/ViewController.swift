//
//  ViewController.swift
//  Rainbow Road
//
//  Created by admin on 12/12/2021.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var colorTabelView: UITableView!
    
    let colors = [UIColor.red , UIColor.orange ,UIColor.yellow ,UIColor.green,UIColor.blue ,UIColor.purple]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorTabelView.dataSource = self
    }


}

