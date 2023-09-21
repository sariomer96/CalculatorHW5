//
//  ViewController.swift
//  CalculatorHW5
//
//  Created by Omer on 20.09.2023.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate{
    @IBOutlet weak var collectionView: UICollectionView!
 

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.reloadData()
     
        // Do any additional setup after loading the view.
    }


}

