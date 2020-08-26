//
//  SecondViewController.swift
//  ViewTransition
//
//  Created by LeeKS on 2020/08/24.
//  Copyright © 2020 LeeKS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameLabel:UILabel!
    @IBOutlet weak var ageLabel:UILabel!
    

    override func viewDidLoad() {
        print("SecondviewController의 view가 메모리에 로드 됨")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.nameLabel.text = UserInfo.shared.name
        self.ageLabel.text = UserInfo.shared.age
        
        print("SecondViewController의 view가 화면에 보여질 예정")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("SecondViewController의 view가 화면에 보여짐")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("SecondViewController의 view가 화면에서 사라짐")
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        print("SecondViewController의 view가 서브뷰를 레이아웃 하려함")
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("SecondViewController의 view가 서브뷰를 레이아웃 함")

    }
    
    @IBAction func popToPrev() {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func dismissModal(){
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
