//
//  SearchViewController.swift
//  Greener
//
//  Created by Julia Wright on 2022-07-15.
//

import UIKit

class SearchViewController: UIViewController, UISearchResultsUpdating, UISearchBarDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
   let tasks = DataLoader().tasksData
    var taskNames = ["fillerString"]
    var filteredTaskNames = ["fillerString"]
    
    let searchController: UISearchController = {
        let vc = UISearchController()
        vc.searchBar.placeholder = "Search More Tasks"
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
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        view.addSubview(collectionView)
        //registration for cell
        collectionView.register(TaskCollectionViewCell.self,
                                forCellWithReuseIdentifier: TaskCollectionViewCell.identfier)
        
        //adding delegate
        collectionView.delegate = self
        //adding data source
        collectionView.dataSource = self
        
        taskNames = []
        filteredTaskNames = []
        
        //filling taskNames array with data
        for task in tasks {
            taskNames.append(task.name)
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        filteredTaskNames = []
        if searchController.searchBar.text == "" {
             filteredTaskNames = taskNames
         }
         
         else {
            for taskName in taskNames {
             
                if taskName.lowercased().contains(searchController.searchBar.text!.lowercased()) {
                     
                     filteredTaskNames.append(taskName)
                 }
             }
         }
            
            self.collectionView.reloadData()
        }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if searchController.searchBar.text == "" {
            return taskNames.count
        } else {
            return filteredTaskNames.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TaskCollectionViewCell.identfier, for: indexPath)
                as? TaskCollectionViewCell else {
            return UICollectionViewCell()
        }
        if filteredTaskNames.count == 0 {
            cell.configure(with: taskNames[indexPath.row])
            return cell
        } else {
            cell.configure(with: filteredTaskNames[indexPath.row])
            return cell
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
