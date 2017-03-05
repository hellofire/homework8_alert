//
//  ViewController.swift
//  homework8_alert
//
//  Created by fire on 2017/3/4.
//  Copyright © 2017年 fire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /* 單一提示框 */
    @IBAction func btnClick(_ sender: Any) {
        
        // 建立一個提示框
        let alertController = UIAlertController(
            title: "網路斷線了",
            message: "若持續無法連線，那就下班了.",
            preferredStyle: .alert)
        
        // 建立[確認]按鈕
        let okAction = UIAlertAction(
            title: "確認",
            style: .default,
            handler: {
                (action: UIAlertAction!) -> Void in
                print("按[確認]，執行 clouser....")
        })
        
        alertController.addAction(okAction)
        
        // 顯示提示框
        self.present(alertController, animated: true, completion: nil)
        
        
    }

    /* Yes / No 提示框 */
    @IBAction func btnYNClick(_ sender: Any) {
        
        // 建立一個提示框
        let alertController = UIAlertController(
            title: "刪除一筆資料",
            message: "確認要「刪除」送嗎？",
            preferredStyle: .alert)
        
        
        // 建立[刪除]按鈕
        let okAction = UIAlertAction(
            title: "刪除",
            style: .destructive,    /* 以紅色顯示按鈕 提醒用戶 */
            handler: {
                (action: UIAlertAction!) -> Void in
                print("按「刪除」，執行clouser")}
        )
        
        alertController.addAction(okAction)
    
        /*
         建立[取消]按鈕
         注意 style .cancel 的按鈕在 「雙按鈕」提示框時，依造Apple的習慣 都會固定在「左方」
         (windows系統是習慣 Cancel按鈕在右方)
         即使這段程式碼是在 後方
         */
         let cancelAction = UIAlertAction(
            title: "取消",
            style: .cancel,
            handler: nil)
        
        alertController.addAction(cancelAction)

        // 顯示提示框
        self.present(alertController, animated: true, completion: nil)
    
    }
    
    /*
     提示框，3選項
     */
    @IBAction func btn3Click(_ sender: Any) {
        // 建立一個提示框
        let alertController = UIAlertController(
            title: "中午要吃啥？",
            message: "下好離手",
            preferredStyle: .alert)
        
        /*
         建立[取消]按鈕
         注意 style .cancel 的按鈕在多選項畫面時，都會固定在「最下方」
         即使這段程式碼是在 最前面
         */
        let cancelAction = UIAlertAction(
            title: "取消",
            style: .cancel,
            handler: nil)
        
        alertController.addAction(cancelAction)
        
        // 建立按鈕1
        let okAction = UIAlertAction(
            title: "牛肉麵",
            style: .default,
            handler: nil)
        
        alertController.addAction(okAction)
        
        // 建立按鈕2
        let ok1Action = UIAlertAction(
            title: "三明治",
            style: .default,
            handler: nil)
        
        alertController.addAction(ok1Action)
        
        // 建立按鈕3
        let ok2Action = UIAlertAction(
            title: "魯肉飯",
            style: .default,
            handler: nil)
        
        alertController.addAction(ok2Action)

        
        // 顯示提示框
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    /*
     螢幕下方，多重選項
     style .actionSheet
     */
    @IBAction func btnMClick(_ sender: Any) {
        
        
        // 建立一個提示框
        let optionMenu = UIAlertController(
            title: "提示",
            message: "請選擇一項",
            preferredStyle: .actionSheet)
        
        //如果要改變文字顏色 加下這行 (default blue)
        optionMenu.view.tintColor = UIColor.green
        
        //-------------------------------------------
        
        let cancleAction = UIAlertAction(title: "取消",
                                         style: .cancel,
                                         handler: nil)
        
        optionMenu.addAction(cancleAction)

        let cameraAction = UIAlertAction(title: "開啟相機",
                                     style: .default,
                                     handler: nil)

        /*
         下面兩行是加入 icon, 參考:
         http://stackoverflow.com/questions/27578866/add-image-into-uialertcontroller-in-swift?rq=1
          注意：icon固定顯示在最左方，但按鈕文字都居中顯示，暫時找不到讓文字靠左的方法
         */
        let image = UIImage(named: "icon_f")
        cameraAction.setValue(image, forKey: "image")
    
        
        optionMenu.addAction(cameraAction)
        
        let callAction = UIAlertAction(title: "打電話 控八控控-控控控",
                                      style: .default,
                                      handler: nil)
        
        optionMenu.addAction(callAction)

        let delAction = UIAlertAction(title: "刪除電話資料",
                                      style: .destructive,
                                      handler: {
                                        (action: UIAlertAction!) -> Void in
                                        self.doaction()}
            
        )
        
        
        optionMenu.addAction(delAction)
        
        self.present(optionMenu, animated: true, completion: nil)
        
        
    }
    
    func doaction() {
    
        print("do somthing")
        
        // 建立一個提示框
        let alertController = UIAlertController(
            title: "提示",
            message: "電話資料已經刪除了",
            preferredStyle: .alert)
        
        let msgAction = UIAlertAction(
            title: "確認",
            style: .default,
            handler: nil)
        
        alertController.addAction(msgAction)
        
        // 顯示提示框
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    /* 提示框中 有 [帳/密] 輸入的欄位 */
    @IBAction func btnLogin(_ sender: Any) {
        
        // 建立一個提示框
        let alertController = UIAlertController(
            title: "會員登入",
            message: nil,
            preferredStyle: .alert)
        
        
        // 建立[登入]按鈕
        let okAction = UIAlertAction(
            title: "登入",
            style: .default,
            handler: {
                (action: UIAlertAction!) -> Void in
                    let email =
                    (alertController.textFields?.first)! as UITextField
                    let password =
                    (alertController.textFields?.last)! as UITextField
                
                    print("email    = \(email.text!)")
                    print("password = \(password.text!)")
                    /* 繼續處理帳密認證 ... */
                }

        )
        
        
        alertController.addAction(okAction)
        
        let cancelAction = UIAlertAction(
            title: "取消",
            style: .cancel,
            handler: nil)
        
        alertController.addAction(cancelAction)
        
        
        //兩個輸入欄位
        alertController.addTextField {
            (textField: UITextField!) -> Void in
            textField.placeholder = "你的 Email"
        }
        
        alertController.addTextField {
            (textField: UITextField!) -> Void in
            textField.placeholder = "密碼"
            textField.isSecureTextEntry = true /*表示畫面不顯示正在輸入的密碼*/
        }
    
        // 顯示提示框
        self.present(alertController, animated: true, completion: nil)
        
    }
    
}

