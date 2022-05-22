//
//  MoviewListController.swift
//  A3
//
//  Created by Wangyang Wu on 11/5/2022.
//

import Foundation
import UIKit

class MoviewListController: UIViewController {
    @IBOutlet weak var movieCollectionView: UICollectionView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        movieCollectionView.dataSource = self
        movieCollectionView.delegate = self
        movieCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails",
           let MDC = segue.destination as? MovieDetailController,
           let indexPath = movieCollectionView.indexPathsForSelectedItems?.first{
            MDC.selectedMovie = movies[indexPath.row]
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
}

extension MoviewListController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as! MovieCollectionViewCell
        cell.setup(with: movies[indexPath.row])
        return cell
    }
}

extension MoviewListController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}



