//
//  ViewController.swift
//  frontProject
//
//  Created by Alumno on 9/6/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var reproductorCancion : AVAudioPlayer?
    
    @IBOutlet weak var imgGuacamole: UIImageView!
    var secGuacamole : [UIImage] = []
    
    @IBOutlet weak var imgNachos: UIImageView!
    var secNachos : [UIImage] = []
    
    @IBOutlet weak var imgTacos: UIImageView!
    var secTacos : [UIImage] = []
    
    @IBOutlet weak var imgTamales: UIImageView!
    var secTamales : [UIImage] = []
    
    @IBOutlet weak var imgSec: UIImageView!
    var secSec : [UIImage] = []
    /////////////////
    @IBOutlet weak var lblCambio: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback , mode: AVAudioSessionModeDefault)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch let error {
            print(error.localizedDescription)
        }
        
        do {
            //Encontrar url del archivo de audio
            let url = Bundle.main.url(forResource: "musicaFondo", withExtension: "mp3")
            //Asignar valor al reproductor
            reproductorCancion = try AVAudioPlayer(contentsOf: url!, fileTypeHint:  AVFileType.mp3.rawValue)
            //reproducir
            reproductorCancion?.volume = 0.8
            reproductorCancion?.play()
        } catch let error {
            print(error.localizedDescription)
        }
        // Do any additional setup after loading the view, typically from a nib.
        
            for i in 1...11 {
                let imagen = UIImage (named: "guacamole\(i)")
                secGuacamole.append(imagen!)
            }
        
            imgGuacamole.animationImages = secGuacamole
            imgGuacamole.animationDuration = 1.5
            imgGuacamole.startAnimating()
        
        for i in 1...14{
            let imagen = UIImage (named: "nachos\(i)")
            secNachos.append(imagen!)
        }
        
        imgNachos.animationImages = secNachos
        imgNachos.animationDuration = 2.0
        imgNachos.startAnimating()
        
        for i in 1...21{
            let imagen = UIImage (named: "tamales\(i)")
            secTamales.append(imagen!)
        }
        
        imgTamales.animationImages = secTamales
        imgTamales.animationDuration = 2.0
        imgTamales.startAnimating()
        
        for i in 1...28{
            let imagen = UIImage (named: "tacos\(i)")
            secTacos.append(imagen!)
        }
        
        imgTacos.animationImages = secTacos
        imgTacos.animationDuration = 2.0
        imgTacos.startAnimating()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /////////////////

    @IBAction func doTapGuacamole(_ sender: Any) {
        lblCambio.text = "Guacamole!!"
        secSec = []
        for i in 1...16{
            let imagen = UIImage (named: "guacamoles\(i)")
            secSec.append(imagen!)
        }
        
        imgSec.animationImages = secSec
        imgSec.animationDuration = 2.0
        imgSec.startAnimating()
    }
    
    @IBAction func doTapNachos(_ sender: Any) {
        lblCambio.text = "Nacho!!"
        secSec = []
        for i in 1...16{
            let imagen = UIImage (named: "nacho\(i)")
            secSec.append(imagen!)
        }
        
        imgSec.animationImages = secSec
        imgSec.animationDuration = 2.0
        imgSec.startAnimating()
    }
    
    @IBAction func doTapTacos(_ sender: Any) {
        lblCambio.text = "Taco!!"
        secSec = []
        for i in 1...16{
            let imagen = UIImage (named: "taco\(i)")
            secSec.append(imagen!)
        }
        
        imgSec.animationImages = secSec
        imgSec.animationDuration = 2.0
        imgSec.startAnimating()
    }
    
    
    @IBAction func doTapTamales(_ sender: Any) {
        lblCambio.text = "Tamales!!"
        secSec = []
        for i in 1...16{
            let imagen = UIImage (named: "tamal\(i)")
            secSec.append(imagen!)
        }
        
        imgSec.animationImages = secSec
        imgSec.animationDuration = 2.0
        imgSec.startAnimating()
    }
    
    
}

