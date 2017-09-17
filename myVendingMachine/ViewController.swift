//
//  ViewController.swift
//  자판기만들기
//
//  Created by 최정훈 on 2017. 9. 18..
//  Copyright © 2017년 최정훈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    

    @IBOutlet weak var resultPrice: UILabel!
    
    var totalPrice: Int = 0// 금액 버튼을 눌렀을때 해당 금액 만큼 더해주기 위해 선언
    var displayTotalPrice: String = ""// totalPrice를 Label로 전달하기 위한 String
    
    
    // 차 인스턴스 생성.
    var whiteCar: SuperCar = SuperCar.init(name: "whiteCar", price: 2000, color: "white")
    var redCar: SuperCar = SuperCar.init(name: "redCar", price: 1500, color: "red")
    var blackCar: SuperCar = SuperCar.init(name: "blackCar", price: 3000, color: "black")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // App 실행시 자동으로 수행할 로직
        
        // ---------- 슈퍼카 형식의 인스턴스가 3개 있음.
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 금액 버튼을 눌렀을때 resultLabel에 금액을 더하여 출력하는 함수
    @IBAction func moneyBtnClick(btn:UIButton){
        
        // btn은 이 함수로 넘어온 UIButton 형식의 인스턴스
        // titleLabel은 btn 인스턴스의 UILabel인스턴스
        // text는 titleLabel의 프로퍼티
        // ? - nil일수도 있어 라고 컴파일러에게 알려주는거고
        // ! - nil이 아니다 라고 프로그래머가 명시 해주는거
        switch btn.titleLabel!.text!{
            
        case "1000원":
            totalPrice += 1000
        case "500원":
            totalPrice += 500
        case "100원":
            totalPrice += 100
        default:
            totalPrice += 0
            
        }
        
        displayTotalPrice = "잔액 : "+String(totalPrice)+"원"
        resultPrice.text = displayTotalPrice
        
    }
    
    @IBAction func carClick(btn: UIButton){
        
        switch btn.titleLabel!.text!{
            
        case "1"://if btn.titleLabel!.text! == "1"]
            if totalPrice - whiteCar.price >= 0{
                totalPrice -= whiteCar.price
                displayTotalPrice = "잔액 : "+String(totalPrice)+"원"
            }else if totalPrice - whiteCar.price < 0{
                displayTotalPrice = "잔액이 부족"
            }
        case "2":
            if totalPrice - redCar.price >= 0{
                totalPrice -= redCar.price
                displayTotalPrice = "잔액 : "+String(totalPrice)+"원"
            }else if totalPrice - redCar.price < 0{
                displayTotalPrice = "잔액이 부족"
            }
        case "3":
            if totalPrice - blackCar.price >= 0{
                totalPrice -= blackCar.price
                displayTotalPrice = "잔액 : "+String(totalPrice)+"원"
            }else if totalPrice - blackCar.price < 0{
                displayTotalPrice = "잔액이 부족"
            }
        default:
            totalPrice -= 0
        }
        
        
        
        resultPrice.text = displayTotalPrice
    }
    
    
    
}

