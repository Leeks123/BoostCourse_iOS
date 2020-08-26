//
//  ViewController.swift
//  ViewTransition
//
//  Created by LeeKS on 2020/08/24.
//  Copyright © 2020 LeeKS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    
    @IBAction func touchUpSetButton(_ sender: UIButton){
        UserInfo.shared.name = nameField.text
        UserInfo.shared.age = ageField.text
    }
    
    override func viewDidLoad() {
        print("viewController의 view가 메모리에 로드 됨")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("ViewController의 view가 화면에 보여질 예정")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("ViewController의 view가 화면에 보여짐")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("ViewController의 view가 화면에서 사라짐")
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        print("ViewController의 view가 서브뷰를 레이아웃 하려함")
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("ViewController의 view가 서브뷰를 레이아웃 함")

    }
}

