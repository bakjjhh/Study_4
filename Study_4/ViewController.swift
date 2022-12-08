//
//  ViewController.swift
//  Study_4
//
//  Created by ALOM on 2022/12/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var animetionView: UIView!
    
    @IBOutlet var tap: UITapGestureRecognizer!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func animateBtnDidTouch(_ sender:UITapGestureRecognizer) {
        if sender.state == UITapGestureRecognizer.State.recognized {
            
            let location = sender.location(in:sender.view)
            
            let rectangle = UIView(frame:CGRect(x: location.x, y: location.y, width: 5, height: 5))
            rectangle.backgroundColor = .black
            
            
            UIView.animate(withDuration: 2, delay: 0.5 ,options: [.repeat , .autoreverse] , animations: {
                
                rectangle.backgroundColor = .orange
                rectangle.frame.size.width += 10
                rectangle.frame.size.height += 10
                rectangle.frame.origin.y += 823
                
                
            })
            
            
            
            self.view.addSubview(rectangle)
            
        }
        
        
        
        
    }
    
    
    
    
}





