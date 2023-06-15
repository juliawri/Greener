//
//  SearchAskEmailReceiptViewController.swift
//  Greener
//
//  Created by Julia Wright on 2023-06-15.
//

import UIKit

class SearchAskEmailReceiptViewController: UIViewController {

    
    let searchChildVC = SearchViewController()
    
    //func to add child view controllers
    func addSearchChildVC() {
        addChild(searchChildVC)
        view.addSubview(searchChildVC.view)
        searchChildVC.didMove(toParent: self)
        setSearchChildVCConstraints()
    }
    
    //constraints
    func setSearchChildVCConstraints() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //add in child view controller
        addSearchChildVC()
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
