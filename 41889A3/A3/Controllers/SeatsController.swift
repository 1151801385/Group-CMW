//
//  SeatsController.swift
//  A3
//
//  Created by Wangyang Wu on 20/5/2022.
//

import Foundation
import UIKit

class SeatsController: UIViewController {

    @IBOutlet weak var processBtn: UIButton!
    
    @IBOutlet weak var A1: UIButton!
    @IBOutlet weak var A2: UIButton!
    @IBOutlet weak var A3: UIButton!
    @IBOutlet weak var A4: UIButton!
    @IBOutlet weak var A5: UIButton!
    @IBOutlet weak var A6: UIButton!
    
    @IBOutlet weak var B1: UIButton!
    @IBOutlet weak var B2: UIButton!
    @IBOutlet weak var B3: UIButton!
    @IBOutlet weak var B4: UIButton!
    @IBOutlet weak var B5: UIButton!
    @IBOutlet weak var B6: UIButton!
    
    @IBOutlet weak var C1: UIButton!
    @IBOutlet weak var C2: UIButton!
    @IBOutlet weak var C3: UIButton!
    @IBOutlet weak var C4: UIButton!
    @IBOutlet weak var C5: UIButton!
    @IBOutlet weak var C6: UIButton!
    
    @IBOutlet weak var D1: UIButton!
    @IBOutlet weak var D2: UIButton!
    @IBOutlet weak var D3: UIButton!
    @IBOutlet weak var D4: UIButton!
    @IBOutlet weak var D5: UIButton!
    @IBOutlet weak var D6: UIButton!
    
    @IBOutlet weak var E1: UIButton!
    @IBOutlet weak var E2: UIButton!
    @IBOutlet weak var E3: UIButton!
    @IBOutlet weak var E4: UIButton!
    @IBOutlet weak var E5: UIButton!
    @IBOutlet weak var E6: UIButton!
    
    @IBOutlet weak var F1: UIButton!
    @IBOutlet weak var F2: UIButton!
    @IBOutlet weak var F3: UIButton!
    @IBOutlet weak var F4: UIButton!
    @IBOutlet weak var F5: UIButton!
    @IBOutlet weak var F6: UIButton!
    
    @IBOutlet weak var G1: UIButton!
    @IBOutlet weak var G2: UIButton!
    @IBOutlet weak var G3: UIButton!
    @IBOutlet weak var G4: UIButton!
    @IBOutlet weak var G5: UIButton!
    @IBOutlet weak var G6: UIButton!
    
    var number: Set<String> = Set()
    var TC: TicketController?
    var selectedMovie : Movie!
    var date:String = ""
    var time:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        processBtn.layer.cornerRadius =  25
        processBtn.layer.masksToBounds = true
        
        let numberOfButtonDisable = Int.random(in: 1...10)
        
        for _ in 1...numberOfButtonDisable {
            
            let buttonPosition = Int.random(in: 1...42)
            
            if let button = self.view.viewWithTag(buttonPosition) as? UIButton
            {
                button.backgroundColor = .darkGray
                button.isEnabled = false

            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var selSeats = ""
        if !number.isEmpty {
            for s in number.sorted() {
                selSeats.append("\(s) ")
            }
        }
        
        if segue.identifier == "goToTicket",
           let TC = segue.destination as? TicketController {
            TC.selected = selectedMovie
            TC.date = self.date
            TC.time = self.time
            TC.selectedSeats = selSeats
        }
        
    }
    
    @IBAction func SeatCliked(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        print(button.tag)
        
        var seat: String = ""
        switch button.tag {
        case 1...6:
            seat = "A\(((button.tag - 1) % 6) + 1)"
        case 7...12:
            seat = "B\(((button.tag - 1) % 6) + 1)"
        case 13...18:
            seat = "C\(((button.tag - 1) % 6) + 1)"
        case 19...24:
            seat = "D\(((button.tag - 1) % 6) + 1)"
        case 25...30:
            seat = "E\(((button.tag - 1) % 6) + 1)"
        case 31...36:
            seat = "F\(((button.tag - 1) % 6) + 1)"
        case 37...42:
            seat = "G\(((button.tag - 1) % 6) + 1)"
            
        default:
            break
        }
        
        if !button.isSelected {
            button.backgroundColor = UIColor(red: 0, green: 0.3765, blue: 0.6, alpha: 1.0)
            button.tintColor = .none
            number.insert(seat)
            
        }else {
            button.backgroundColor = .white
            number.remove(seat)
        }
        
        button.isSelected = !button.isSelected
    }

    @IBAction func processClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "goToTicket", sender: nil)
    }
}
