//
//  TicketController.swift
//  A3
//
//  Created by Wangyang Wu on 20/5/2022.
//

import Foundation
import UIKit

class TicketController: UIViewController {

    @IBOutlet weak var confirmBtn: UIButton!
    @IBOutlet weak var moviePoster: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var seatLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    var selectedSeats: String?
    var selected : Movie!
    var date:String = ""
    var time:String = ""
    
    @IBAction func returnMain(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.moviePoster.image = selected.image
        self.movieNameLabel.text = selected.title
        dateLabel.text = self.date
        timeLabel.text = self.time
        seatLabel.text = self.selectedSeats
        priceLabel.text = "$" + totalPrice()
        
    }
    
    func totalPrice() -> String{
        var total: String
        total = String(selectedSeats!.count/3 * 20)
        return total
    }
}
