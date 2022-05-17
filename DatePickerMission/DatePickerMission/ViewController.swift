//
//  ViewController.swift
//  DatePickerMission
//
//  Created by 김주현 on 2022/05/13.
//

import UIKit

class ViewController: UIViewController {
    
    // 타이머가 구동되면 실행할 함수
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime: String?
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func chageDatePicker(_ sender: UIDatePicker) {
        let datePcikverView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePcikverView.date)
        
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: datePcikverView.date)
    }
    
    
    @objc func updateTime(){
        //        lblCurrentTime.text = String(count)
        //        count = count + 1

        let date = NSDate()

        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = "현재시간 : " + formatter.string(from: date as Date)

        formatter.dateFormat = "hh:mm aaa"
        let currentTime = formatter.string(from: date as Date)
        
        if (alarmTime == currentTime) {
            view.backgroundColor = UIColor.red
        }
        else {
            view.backgroundColor = UIColor.white
        }
    }
}

