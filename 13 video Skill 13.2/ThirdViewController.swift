//
//  ThirdViewController.swift
//  13 video Skill 13.2
//
//  Created by Даша Черняева on 11.03.2022.
//

import UIKit

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Item 3"
        setupButton().addAction(
            UIAction(
                handler: {  [weak self] _ in
                    self?.navigationController?.pushViewController(ThirdSecondViewController(), animated: true)
                }), for: .touchUpInside)
    }
}
