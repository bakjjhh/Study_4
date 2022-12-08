//
//  ViewController.swift
//  Study_4
//
//  Created by ALOM on 2022/12/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var animetionView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func animateBtnDidTouch(_ sender:Any) {
        UIView.animate(withDuration: 1, delay: 0.5 , animations: {
            self.animetionView.backgroundColor = .systemPink
            self.animetionView.frame.size.width += 10
            self.animetionView.frame.size.height += 10
        }) {_ in
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn) {
                self.animetionView.backgroundColor = .orange
                self.animetionView.frame.origin.y += 40
            }
        }
    }
    
   

}

