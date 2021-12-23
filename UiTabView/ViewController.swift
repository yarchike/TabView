//
//  ViewController.swift
//  UiTabView
//
//  Created by Yarchik on 23.12.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var myTableView = UITableView()
    let indentifire  = "MyCell"
    var array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTable()
    }
    func createTable()
    {
        self.myTableView = UITableView(frame: view.bounds, style: .plain)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: indentifire)
        
        self.myTableView.delegate =  self
        self.myTableView.dataSource = self
            
        myTableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        
        view.addSubview(myTableView)
    }
    
    //UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: indentifire, for: indexPath)
        
        let number = array[indexPath.row]
        
        cell.textLabel?.text = number
        
        return cell
    }
    //UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
//    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
//        print("Accesory patch =", indexPath)
//        let ounerCell = tableView.cellForRow(at: indexPath)
//        print("cell title =", ounerCell?.textLabel?.text ?? "nil")
//    }
    
}

