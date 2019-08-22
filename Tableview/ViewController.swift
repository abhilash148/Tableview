//
//  ViewController.swift
//  Tableview
//
//  Created by Apple on 01/08/19.
//  Copyright © 2019 DbsBank. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    //let transportItems = ["Bus","Helicopter","Truck","Boat","Bicycle","Motorcycle","Plane","Train","Car","Scooter","caravan"]
    
    //let transport = ["auto","auto","auto","auto","auto","auto","auto","auto","auto","auto","auto"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    /*
     
     
     override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transportItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "transportcell", for: indexPath)
        
        cell.textLabel?.text = transportItems[indexPath.row]
        
        
        let imageName = UIImage(named: transport[indexPath.row])
        cell.imageView?.image = imageName
        
        return cell
        
    }
     
     
     */


}

struct Headline {
    var id: Int
    var title : String
    var text: String
    var image: String
}

class HeadlineTableViewCell: UITableViewCell{
    
    
    @IBOutlet weak var headLineTitleLabel: UILabel!
    
    @IBOutlet weak var headLineTextLabel: UILabel!
    
    @IBOutlet weak var headLineImageView: UIImageView!
    
    
}

class StoriesTableViewController: UITableViewController{
    
    var headlines = [
        Headline(id: 1, title: "Lorem Ipsum", text: "dwff enfncke vnef fkj  fken njf nek vkefne v kevj v eje vmnjv", image: "auto"),
        Headline(id: 2, title: "Aenean condiment", text: "fff vefnek v fkn k kenf  kenfc jnk jfke ljdok knd kke feioe infkief i iofnikfnd fwel", image: "auto"),
        Headline(id: 3, title: "dornefvn de", text: "dwff enfncke vnef fkj  fken njf nek vkefne v kevj v eje vmnjv", image: "auto"),
        Headline(id: 4, title: "jorjveifjof", text: "fff vefnek v fkn k kenf  kenfc jnk jfke ljdok knd kke feioe infkief i iofnikfnd fwel", image: "auto")
        
    ]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125.0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "transportcell", for: indexPath) as! HeadlineTableViewCell
        
        let headline = headlines[indexPath.row]
       cell.headLineTitleLabel?.text = headline.title
        //cell.headLineTextLabel?.text = headline.text
        cell.headLineImageView?.image = UIImage(named: headline.image)
        return cell
        
    }
    
}


