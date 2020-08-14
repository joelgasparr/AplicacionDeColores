//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Joel Gaspar on 14/08/20.
//  Copyright © 2020 Joel Gaspar. All rights reserved.
//

import UIKit

class ColorsDetailVC: UIViewController {
    
    
    var color: UIColor?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
       
    }
    


}
