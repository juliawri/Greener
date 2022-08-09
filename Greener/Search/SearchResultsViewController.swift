//
//  SearchResultsViewController.swift
//  Greener
//
//  Created by Julia Wright on 2022-07-15.
//


import UIKit
import SwiftUI

class SearchResultsViewController: UIViewController, UISearchBarDelegate {
    
    
    let tasks = DataLoader().tasksData
     var taskNames = ["fillerString"]
     var filteredTaskNames = ["filler"]
     
     let searchController: UISearchController = {
         let vc = UISearchController()
         vc.searchBar.placeholder = "Songs, Artists, Albums"
         vc.searchBar.searchBarStyle = .minimal
         vc.definesPresentationContext = true
         return vc
     }()
     
     private let collectionView: UICollectionView = UICollectionView(
         frame: .zero,
         collectionViewLayout: UICollectionViewCompositionalLayout(sectionProvider: {_, _ -> NSCollectionLayoutSection? in
             let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
         
         item.contentInsets = NSDirectionalEdgeInsets(
             top: 2,
             leading: 7,
             bottom: 2,
             trailing: 7
         )
         
         let group = NSCollectionLayoutGroup.horizontal(
             layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(150)),
             subitem: item,
             count: 1
         )
         
         
         group.contentInsets = NSDirectionalEdgeInsets(
             //padding at top of group of two cells
             top: 2,
             leading: 0,
             //padding at bottom of group of two cells
             bottom: 2,
             trailing: 0
         )
         return NSCollectionLayoutSection(group: group)
     }))
     
     override func viewDidLoad() {
         super.viewDidLoad()
         view.backgroundColor = .systemBackground
         // search controller styling and functionality
        // searchController.searchResultsUpdater = self
        // searchController.searchBar.delegate = self
         navigationItem.searchController = searchController
         navigationItem.hidesSearchBarWhenScrolling = false
         
         view.addSubview(collectionView)
         //registration for cell
         collectionView.register(TaskCollectionViewCell.self,
                                 forCellWithReuseIdentifier: TaskCollectionViewCell.identfier)
         
         //adding delegate
       //  collectionView.delegate = self
         //adding data source
         //collectionView.dataSource = self
         
         taskNames = []
         filteredTaskNames = []
         
         //filling taskNames array with data
         for task in tasks {
             taskNames.append(task.task)
         }
         
         
     }
    

     
     override func viewDidLayoutSubviews() {
         super.viewDidLayoutSubviews()
         collectionView.frame = view.bounds
     }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText == "" {
            filteredTaskNames = taskNames
        }
        
        else {
            for taskName in taskNames {
            
                if taskName.contains(searchText) {
                    
                    filteredTaskNames.append(taskName)
                }
            }
            
            self.collectionView.reloadData()
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

//extension SearchResultsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    //func numberOfSections(in collectionView: UICollectionView) -> Int {
   //     return 1
 //   }
    
 //   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
  //      return tasks.count
        
//    }
    
 //   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
 //       guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TaskCollectionViewCell.identfier, for: indexPath)
 //               as? TaskCollectionViewCell else {
 //           return UICollectionViewCell()
 //       }
        
 //       let task = tasks[indexPath.row]
//        cell.configure(with: task.task)
 //           return cell
//    }
// }

}
