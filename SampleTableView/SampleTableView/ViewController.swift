//
//  ViewController.swift
//  SampleTableView
//
//  Created by fukuda on 2023/03/19.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let fruits = ["りんご","みかん","ブドウ","レモン","スイカ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        print(indexPath.row)
        cell.textLabel!.text = fruits[indexPath.row]
        return cell
    }
    
    
}

