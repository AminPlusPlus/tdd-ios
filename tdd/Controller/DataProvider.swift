//
//  DataProvider.swift
//  tdd
//
//  Created by Aminjoni Abdullozoda on 6/27/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import UIKit

enum TaskSection : Int {
    case todo
    case done
}


class DataProvider : NSObject {
    var taskManager: TaskManager?
}

extension DataProvider : UITableViewDelegate {
    
}

extension DataProvider : UITableViewDataSource {

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let section = TaskSection(rawValue: section) else {fatalError()}
        guard let taskManager = taskManager else {return 0}
    
        switch section {
            case .todo: return taskManager.tasksCount
            case .done: return taskManager.doneTaskCount
      
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return TaskCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    
}
