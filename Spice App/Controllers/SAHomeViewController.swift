//
//  SAHomeViewController.swift
//  Spice App
//
//  Created by Mary Alexis Solis on 7/25/15.
//  Copyright (c) 2015 Mary Alexis Solis. All rights reserved.
//

import UIKit


class SAHomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    private var homeView = NSBundle.mainBundle().loadNibNamed("SAHome", owner: nil, options: nil)[0] as! SAHomeView
    private let reuseIdentifier = "FeaturedRecipesViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.addSubview(homeView)
        
        //Set delegate value
        homeView.featuredRecipesCollectionView.dataSource = self
        homeView.featuredRecipesCollectionView.delegate = self
    
        //Create view layout for flowLayout
        var flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        homeView.featuredRecipesCollectionView.setCollectionViewLayout(flowLayout, animated: true)
        
        //Register nib file for featured recipe collection view cell
        let nibName = UINib(nibName: "SAFeaturedRecipesCollectionViewCell", bundle:nil)
        homeView.featuredRecipesCollectionView.registerNib(nibName, forCellWithReuseIdentifier: "FeaturedRecipesViewCell")
        
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
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! UICollectionViewCell
        cell.backgroundColor = UIColor.redColor()
        return cell
    }
    
}

extension SAHomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(100, 100)
    }
  
}
