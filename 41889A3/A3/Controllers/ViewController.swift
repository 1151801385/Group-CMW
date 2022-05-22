//
//  ViewController.swift
//  A3
//
//  Created by Wangyang Wu on 11/5/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var GifView: UIImageView!
    @IBOutlet weak var enterBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        GifView.loadGif(name: "cinema")
        enterBtn.layer.cornerRadius =  25
        enterBtn.layer.masksToBounds = true
    }
}

