//
//  SearchItemViewController.swift
//  Greener
//
//  Created by Julia Wright on 2023-06-28.
//

/*import UIKit

class SearchItemViewController: UIViewController {
    let task: TasksData
    let tasks = DataLoader().tasksData
    var tasksArr = ["filler string"]

    
    // MARK: - Init
    
    private let collectionView: UICollectionView(frameL .zero, UICollectionViewLayout: UICollectionViewCompositionalLayout(sectionProvider: {_, _ -> NSCollectionLayoutSection? in
        let item = NSCollectionLayoutItem(layoutSize:NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
        
        item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
        
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                                                          heightDiension: .absolute(140)),
                                                   subitems: item, count: 2
    )
        group.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
        
        return NSCollectionLayoutSection(group: group)
        
    }))
    init(task: TasksData) {
        self.task  = task
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Lifecyle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //filling array with data
        tasksArr = []
        for tas in tasks {
            tasksArr.append(tas.name)
        }
        title = task.name
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(TaskCollectionViewCell.self, forCellWithReuseIdentifier: TaskCollectionViewCell.identifier)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
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

extension SearchItemViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return task.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TaskCollectionViewCell.identfier, for: indexPath
        ) as? TaskCollectionViewCell else {
            return UICollectionViewCell()
        }
        let task = tasks[indexPath.row]
        cell.configure(with: TaskModelViewController(name: task.name,
                                               artworkURL: URL(string: task.images.first?.url ?? ""),
                                               creatorName: task.owner.display_name
                                              ))
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        let task = task[indexPath.row]
        let vc = TaskModelViewController(task: task)
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
}
*/
