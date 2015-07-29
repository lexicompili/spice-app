//
//  SAHomeViewController.swift
//  Spice App
//
//  Created by Mary Alexis Solis on 7/25/15.
//  Copyright (c) 2015 Mary Alexis Solis. All rights reserved.
//

import UIKit


class SAHomeViewController: UIViewController, UICollectionViewDataSource {

    var homeView = NSBundle.mainBundle().loadNibNamed("SAHome", owner: nil, options: nil)[0] as! SAHomeView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.addSubview(homeView)
        
        //Set delegate value
        homeView.featuredRecipesCollectionView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


extension SAHomeViewController: UICollectionViewDataSource {
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
}