//
//  MoreTasksViewController.swift
//  Greener
//
//  Created by Julia Wright on 2022-06-17.
//

import UIKit

class MoreTasksViewController: UIViewController {
    // var resultsVCObj : ResultsVC = ResultsVC()
    
    var button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        button.frame = CGRect(x: 30, y: 30, width: 200, height: 200)
        button.backgroundColor = .red
        button.tag = 1
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        
        if sender.tag == 1 {
            self.performSegue(withIdentifier: "searchSegue", sender: self)
        }
    }

   /* func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        let vc = searchController.searchResultsController as? ResultsVC
        vc?.view.backgroundColor = .yellow
        print(text)
    }
    */
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
     */
}
