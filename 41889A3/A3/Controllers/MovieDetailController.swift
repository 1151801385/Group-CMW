//
//  MovieDetailController.swift
//  A3
//
//  Created by Wangyang Wu on 12/5/2022.
//

import Foundation
import UIKit

class MovieDetailController: UIViewController {
    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var introductionLabel: UILabel!
    var selectedMovie : Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageV.image = selectedMovie.image
        introductionLabel.text = selectedMovie.introduction
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPlay",
           let playVC = segue.destination as? MoviePlayController {
            playVC.selectedMovie = selectedMovie
        } else if segue.identifier == "goToTicket",
            let TC = segue.destination as? TicketController {
                TC.selected = selectedMovie
            }
        
    }
    
}
