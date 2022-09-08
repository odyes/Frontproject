//
//  ViewController.swift
//  frontProject
//
//  Created by Alumno on 9/6/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgGuacamole: UIImageView!
    var secGuacamole : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func doTapGuacamole(_ sender: Any) {
        for i in 1...11 {
            let imagen = UIImage (named: "guacamole\(i)")
            secGuacamole.append(imagen!)
        }
        
        imgGuacamole.animationImages = secGuacamole
        imgGuacamole.animationDuration = 1.0
        imgGuacamole.startAnimating()
    }
}

