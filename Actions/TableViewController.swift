//
//  TableViewController.swift
//  Actions
//
//  Created by Gary Tokman on 10/27/17.
//  Copyright © 2017 Gary Tokman. All rights reserved.
//

import UIKit

final class Todo {
    let title: String
    let date: Date
    var isImportant: Bool
    var isFinished: Bool
    
    init(title: String) {
        self.title = title
        self.date = Date()
        self.isImportant = false
        self.isFinished = false
    }
}

class TableViewController: UITableViewController {

    var todos = [Todo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 1...10 {
            todos.append(Todo(title: "Todo #\(i)"))
        }
    }
    
    // Mark: - Table view delegate
    
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return todos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)

        // Configure the cell...
        let todo = todos[indexPath.row]
        cell.textLabel?.text = todo.title
        cell.detailTextLabel?.text = todo.date.description

        return cell
    }
}
