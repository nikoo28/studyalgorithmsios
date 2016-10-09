//
//  HomeViewController.swift
//  StudyAlgorithms
//
//  Created by Aishwarya Pratap Singh on 10/9/16.
//  Copyright © 2016 Aishwarya Pratap Singh. All rights reserved.
//

import UIKit
import MGSwipeTableCell

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,MGSwipeTableCellDelegate {

    @IBOutlet weak var tableView:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - DataSource
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let reuseIdentifier = "programmaticCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as! MGSwipeTableCell!
        if cell == nil
        {
            cell = MGSwipeTableCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: reuseIdentifier)
        }
        
        cell?.textLabel!.text = String(format:"index value %d",indexPath.row)
        cell?.detailTextLabel!.text = "Detail text"
        cell?.delegate = self //optional
        
        //configure left buttons
        let fav = MGSwipeButton(title: "Favorite", icon: nil, backgroundColor: UIColor.blue , callback: {
            (sender: MGSwipeTableCell!) -> Bool in
            print("Fav Pressed")
            return true
        })
        
        let bookMark = MGSwipeButton(title: "BookMark", icon: nil, backgroundColor: UIColor.blue , callback: {
            (sender: MGSwipeTableCell!) -> Bool in
            print("BookMark Pressed")
            return true
        })
        
        cell?.leftButtons = [fav]
        cell?.leftSwipeSettings.transition = MGSwipeTransition.rotate3D
        
        //configure right buttons
        cell?.rightButtons = [bookMark]
        cell?.rightSwipeSettings.transition = MGSwipeTransition.rotate3D
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
