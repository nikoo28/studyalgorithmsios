//
//  SideMenuViewController.swift
//  StudyAlgorithms
//
//  Created by Aishwarya Pratap Singh on 10/9/16.
//  Copyright © 2016 Aishwarya Pratap Singh. All rights reserved.
//

import UIKit
import AKSideMenu

public class SideMenuViewController: AKSideMenu {

    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override public func awakeFromNib() {
        self.contentViewController = self.storyboard!.instantiateViewController(withIdentifier: "contentViewController")
        self.leftMenuViewController = self.storyboard!.instantiateViewController(withIdentifier: "leftMenuViewController")
        self.rightMenuViewController = self.storyboard!.instantiateViewController(withIdentifier: "rightMenuViewController")
        self.panGestureRightEnabled = false
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
