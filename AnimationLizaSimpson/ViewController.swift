//
//  ViewController.swift
//  AnimationLizaSimpson
//
//  Created by Сергей Голенко on 23.12.2020.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var imageLiza: UIImageView!
    var count = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       reloudLiza()
    }
    
    func reloudLiza(){
        imageLiza.image = UIImage(named: "frame_0_delay-0.07s")
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        self.view.addGestureRecognizer(tap)
        view.isUserInteractionEnabled = true
    }


    

    // function which is triggered when handleTap is called
    @objc func handleTap(sender: UITapGestureRecognizer) {
        imageLiza.image = UIImage(named: "frame_\(count)_delay-0.07s")
        count += 1
        if count == 3{
            count = 0
        }
    }
    
    
    
    
    
}

