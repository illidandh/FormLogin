//
//  ViewController.swift
//  Login
//
//  Created by iOS Student on 2/14/17.
//  Copyright © 2017 NKT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_user: UITextField!
    @IBOutlet weak var tf_pass: UITextField!
    @IBOutlet weak var tf_listuser: UILabel!
    var users = ["admin":"123","nkt":"nkt"]
    var login = false
    @IBAction func btn_dsuser(_ sender: AnyObject) {
        var listuser:String = ""
        for (user,password) in users
        {
            listuser += user + ":" + password + "\n"
        }
        print(listuser)
        tf_listuser.text = listuser
    }
    @IBAction func btn_them(_ sender: AnyObject) {
        // Đánh vào box username và password để thêm user
        if let password = users[tf_user.text!]
        {
            print("Username đã tồn tại")
        }
        else
        {
            users[tf_user.text!] = tf_pass.text!        }
    }
    
    @IBAction func btn_sua(_ sender: AnyObject) {
        // Phải đăng nhập để sửa user
        if login == true
        {
            users[tf_user.text!] = tf_pass.text!
            print("Sửa user thành công")
        }
        else
        {
            print("Bạn phải đăng nhập trước để sửa user")
        }
    }
    @IBAction func btn_xoa(_ sender: AnyObject) {
        // Phải đăng nhập để xóa user
        if login == true
        {
            users.removeValue(forKey: tf_user.text!)
            print("Xóa user thành công")
        }
        else
        {
            print("Bạn phải đăng nhập trước để xóa user")
        }

    }
    @IBAction func btn_login(_ sender: AnyObject) {
        if let password = users[tf_user.text!]
        {
            if password == tf_pass.text
            {
                print("Đăng nhập thành công")
                login = true
                
            }
            else
            {
                print("Mật khẩu không đúng")
            }
        }
        else
        {
            print("Tài khoản không tồn tại")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tf_listuser.numberOfLines = 0
    }

}

