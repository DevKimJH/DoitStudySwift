//
//  ViewController.swift
//  ImageViewMission
//
//  Created by 김주현 on 2022/05/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnNext: UIButton!
    @IBOutlet var btnPrev: UIButton!
    @IBOutlet var imgView: UIImageView!
    
    /*
    var img1: UIImage?
    var img2: UIImage?
    var img3: UIImage?
    var img4: UIImage?
    var img5: UIImage?
    var img6: UIImage?
     */
    var idx = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            
        /*
        img1 = UIImage(named: "1.png")
        img2 = UIImage(named: "2.png")
        img3 = UIImage(named: "3.png")
        img4 = UIImage(named: "4.png")
        img5 = UIImage(named: "5.png")
        img6 = UIImage(named: "6.png")
         imgView.image = img1
        */
        
        imgView.image = UIImage(named: "1.png")
       
    }

    
    
    @IBAction func clickNextBtn(_ sender: UIButton) {
        idx = idx+1
        if(idx > 6){
            idx = 1
        }
        
        let imageName = String(idx) + ".png"
        imgView.image = UIImage(named: imageName)
    }
    
    @IBAction func clickPrevBtn(_ sender: UIButton) {
        idx = idx-1
        if(idx < 1){
            idx = 6
        }
        
        let imageName = String(idx) + ".png"
        imgView.image = UIImage(named: imageName)
    }
}

