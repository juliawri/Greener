//
//  SearchViewController.swift
//  Greener
//
//  Created by Julia Wright on 2022-07-15.
//

import UIKit

class SearchViewController: UIViewController, UISearchResultsUpdating, UISearchBarDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    //loading tasks from json file
    let tasks = DataLoader().tasksData
    //creating arrays
    var taskNames = ["fillerString"]
    var filteredTaskNames = ["fillerString"]
    var ids = ["fillerString"]

    //creating instance of SearchController
    let searchController: UISearchController = {
        let vc = UISearchController()
        //styling the search bar
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
    
    //making sure cell can't focus
    private func collectionView(collectionView: UICollectionView, canFocusItemAtIndexPath indexPath: NSIndexPath) -> Bool {
            return false
        }
    
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
        
        //creating arrays
        taskNames = []
        filteredTaskNames = []
        ids = []
        
        //filling taskNames array with data
        for task in tasks {
            taskNames.append(task.name)
            ids.append(task.id)
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
        
        private func collectionView(_ collectionView: UICollectionView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            //task = tasks[indexPath.row]
            collectionView.selectItem(at: nil, animated: true, scrollPosition: [])
            let row=indexPath.row
            performSegue(withIdentifier: "showContent", sender: row)
        }
            
    
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if segue.identifier == "showContent" {
                let destination = segue.destination as! TaskModelViewController
                destination.contentString = "hello"
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
