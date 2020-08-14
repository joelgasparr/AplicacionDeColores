//
//  ColorsTableVCViewController.swift
//  RandomColors
//
//  Created by Joel Gaspar on 14/08/20.
//  Copyright © 2020 Joel Gaspar. All rights reserved.
//

import UIKit

class ColorsTableVCViewController: UIViewController{
 
    var colors: [UIColor] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         addRandomColors()
    
    }
    
    func addRandomColors() {
        for _ in 0..<50{
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
    
    
    }
    
extension ColorsTableVCViewController: UITableViewDelegate, UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        
         return cell
     }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetailVC", sender: color)
    }
}
