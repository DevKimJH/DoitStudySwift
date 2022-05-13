//
//  ViewController.swift
//  DatePicker
//
//  Created by 김주현 on 2022/05/13.
//

import UIKit

class ViewController: UIViewController {
    
    // 타이머가 구동되면 실행할 함수를 지정
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0  // 타이머의 간격 값
    var count = 0       // 타이머가 설정한 간격대로 실행되는지 확인하기 위한 변수
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        /**
         데이트 피커를 선택할 때 발생하는 액션 함수인 'changeDatePicker'가 호출되면서
         sender라는 UIDatePicker 자료형의 인수가 전달된다. 이 sender를
         datePickerView라는 상수에 저장한다
         */
        let datePickerView = sender
        
        // 날짜를 출력하기 위해 DateFormatter라는 클래스 상수 formatter 생성
        let formatter = DateFormatter()
        
        // formatter의 dateFormat 속성을 설정
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        
        // 데이트 피커에서 선택한 날짜를 formatter의 date Format에서 설정한 포맷대로 문자열로 변환
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
    }
    
    // 타이머가 동작할 때 실행할 함수
    @objc func updateTime(){
        //lblCurrentTime.text = String(count)
        //count = count + 1
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblCurrentTime.text = "현재시간: " + formatter.string(from: date as Date)
    }
    
}

