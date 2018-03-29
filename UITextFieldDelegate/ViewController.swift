//
//  ViewController.swift
//  UITextFieldDelegate
//
//  Created by D7703_28 on 2018. 3. 22..
//  Copyright © 2018년 YDuChoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtInput.delegate = self
        
        txtInput.placeholder = "입력하세요"
        txtInput.clearButtonMode = UITextFieldViewMode.whileEditing
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //버튼을 눌렀을떄 작동
    @IBAction func btInput(_ sender: Any) {
        lblResult.text = "Hello " + txtInput.text!
        txtInput.text = ""
        txtInput.resignFirstResponder()
    }
    
    //화면을 터치하였을때 작동
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txtInput.resignFirstResponder()
        lblResult.backgroundColor = UIColor.red
        
    }
    
    // 앤터를 클릭할떄 작동
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        lblResult.text = "Hello " + txtInput.text!
        txtInput.text = ""
        txtInput.resignFirstResponder()
        
        view.backgroundColor = UIColor.yellow
        return true
    }
    
    // clear를 눌렀을때 작동
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        txtInput.backgroundColor = UIColor.cyan
        return true
    }
    
    //텍스트필드에 있다가 딴곳으로 갔다가 다시 돌아왔을때
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.white
        return true
    }
}

