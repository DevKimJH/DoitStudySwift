//
//  ViewController.swift
//  PickerView
//
//  Created by 김주현 on 2022/05/14.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 1
    var imageFileName = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg",
                         "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg"]
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // returns the number of 'columns' to display
    func numberOfComponents(in pickverView: UIPickerView) -> Int{
        return PICKER_VIEW_COLUMN
    }
    
    // returns the # of rows in each component..
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return imageFileName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileName[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int,
                    inComponent component: Int){
        /**
         사용자가 피커 뷰의 룰렛에서 선택한 row값을 사용햐ㅏ여 imageFileName 배열에서
         row 값에 해당하는 문자열을 가지고 온다
         */
        lblImageFileName.text = imageFileName[row]
     }

}

