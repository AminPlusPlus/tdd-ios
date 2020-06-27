//
//  TaskManager.swift
//  tdd
//
//  Created by Aminjoni Abdullozoda on 6/26/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import Foundation

class TaskManager {
    
    fileprivate var inProgressTasks = [Task]()
    fileprivate var completedTasks = [Task]()
    
    var tasksCount : Int  {
        return inProgressTasks.count
    }
    var doneTaskCount : Int {
        return completedTasks.count
    }
    
    func add(task : Task) {
        inProgressTasks.append(task)
    }
    
    func task(at index : Int) -> Task {
        return inProgressTasks[index]
    }
    
    func checkTask(at index : Int) {
        let task = inProgressTasks.remove(at: index)
        completedTasks.append(task)
    }
    
    func completeTask(at index : Int) -> Task {
        return completedTasks[index]
    }
    
    
    
}
