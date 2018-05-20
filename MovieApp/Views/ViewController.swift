//
//  ViewController.swift
//  MovieApp
//
//  Created by Irvin  Castellanos on 5/19/18.
//  Copyright © 2018 Irvin  Castellanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var moviesCollectionView: UICollectionView!
  
  let movies = [#imageLiteral(resourceName: "default"), #imageLiteral(resourceName: "strange"), #imageLiteral(resourceName: "antman"), #imageLiteral(resourceName: "avengers")]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let nib = UINib(nibName: "MovieCollectionViewCell", bundle: nil)
    moviesCollectionView.register(nib, forCellWithReuseIdentifier: "movieCell")
    
    moviesCollectionView.dataSource = self
    moviesCollectionView.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 19
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
    
    let index = indexPath.row % movies.count
    cell.frontImage.image = movies[index]
    return cell
  }
  
}

extension ViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: 90, height: 120)
  }
}

