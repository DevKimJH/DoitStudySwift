//
//  ViewController.swift
//  ImageView
//
//  Created by 김주현 on 2022/05/12.
//

import UIKit

class ViewController: UIViewController {

    var isZoom = false      // 확대 여부를 나타내는 변수
    var imgOn: UIImage?     // 켜진 전구 이미지가 있는 UIImage 타입의 변수
    var imgOff: UIImage?    // 꺼진 전구 이미지가 있는 UIImage 타입의 변수
    
    @IBOutlet var imgView: UIImageView! // 이미지 뷰에 대한 아웃렛 변수
    @IBOutlet var btnResize: UIButton!  // 버튼에 대한 아웃렛 변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgOn = UIImage(named: "lamp_on.png")   // imgOn애 "lamp_on.png" 이미지 할당
        imgOff = UIImage(named: "lamp_off.png") // imgOff에 "lamp_off.png" 이미지 할당
        
        imgView.image = imgOn   // 위에 서 할당한 imgOn 이미지를 imgView에 할당
    
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale: CGFloat = 2.0    // 확대할 배율 값
        var newWidth:CGFloat        // 확대할 크기의 계산 값을 보관할 변수
        var newHeight:CGFloat
        
        if(isZoom){ // true
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            
            btnResize.setTitle("확대", for: .normal)
        }
        else{ // false
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            
            btnResize.setTitle("축소", for: .normal)
        }
        
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if(sender.isOn){
            imgView.image = imgOn
        }
        else{
            imgView.image = imgOff
        }
        
    }
}

