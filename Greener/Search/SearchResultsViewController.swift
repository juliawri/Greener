//
//  SearchResultsViewController.swift
//  Greener
//
//  Created by Julia Wright on 2022-07-15.
//


import UIKit
import SwiftUI

class SearchResultsViewController: UIViewController {
    
    let tasks = DataLoader().tasksData
    //holds search query entered by a user
    @State var searchQuery = ""
    // variable holds list of tasks as filtered by user's search query
    @State var filteredTasks = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // adding each task name to the filteredTasks array
        for task in tasks {
            filteredTasks.append(task.task)
        }
        
        // Do any additional setup after loading the view.
    }
    
    func filterTasks() {
        .searchable(text: $searchQuery)
        filteredTasks = tasks.task.filter {
            $0.task.localizedCaseInsensitiveContains(searchQuery)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
