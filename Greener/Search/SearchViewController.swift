//
//  SearchViewController.swift
//  Greener
//
//  Created by Julia Wright on 2022-07-15.
//

import UIKit

class SearchViewController: UIViewController, UISearchResultsUpdating {
    
    let searchController: UISearchController = {
        let vc = UISearchController(searchResultsController: SearchResultsViewController())
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
            count: 2
        )
        
        
        group.contentInsets = NSDirectionalEdgeInsets(
            //padding at top of group of two cells
            top: 10,
            leading: 0,
            //padding at bottom of group of two cells
            bottom: 10,
            trailing: 0
        )
        return NSCollectionLayoutSection(group: group)
    }))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
        view.addSubview(collectionView)
        //registration for cell
        collectionView.register(TaskCollectionViewCell.self,
                                forCellWithReuseIdentifier: TaskCollectionViewCell.identfier)
        
        //adding delegate
        collectionView.delegate = self
        //adding data source
        collectionView.dataSource = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
    
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let resultsController = searchController.searchResultsController as? SearchResultsViewController, let query = searchController.searchBar.text,
              !query.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        
        print(query)
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

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TaskCollectionViewCell.identfier, for: indexPath)
                as? TaskCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.configure(with: "Task")
        //cell.backgroundColor = .blue
        return cell
    }
}
