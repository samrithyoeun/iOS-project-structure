//
//  ViewController.swift
//  Project
//
//  Created by Ricky_DO on 3/19/18.
//  Copyright © 2018 Pathmazing. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.getUser()
    }
    
    // Private
    fileprivate func getUser() {
        UsersService.getUsers { (result) in
            switch result {
            case .success(let userEntity):
                print("user id == \(userEntity.id)")
                break
            case .failure(let errorMessage):
                alert(message: errorMessage)
            }
        }
    }
}

//extension ViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 0
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return UITableViewCell()
//    }
//}
//
//extension ViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//    }
//}
