//
//  DataLoader.swift
//  Greener
//
//  Created by Julia Wright on 2022-07-28.
//

import Foundation

public class DataLoader {
    
    @Published var tasksData = [TasksData]()
    
    init(){
        load()
        sort()
    }
    
    func load() {
        
        if let fileLocation = Bundle.main.url(forResource: "Tasks", withExtension: "json") {
            
            //do catch for errors
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([TasksData].self, from: data)
                
                self.tasksData = dataFromJson
                
            } catch {
                print(error)
            }
        }
    }
    
    func sort() {
        self.tasksData = self.tasksData.sorted(by: { $0.task < $1.task})
    }
}
