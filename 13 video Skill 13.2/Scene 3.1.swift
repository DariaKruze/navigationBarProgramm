//
//  Scene 3.1.swift
//  13 video Skill 13.2
//
//  Created by Даша Черняева on 11.03.2022.
//

import UIKit

class FinishViewController: UIViewController {

    let previosButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
        setupConstraints()
    }

    private func setupViews() {
        previosButton.setTitle("previos Scene", for: .normal)
        previosButton.setTitleColor(.white, for: .normal)
        previosButton.addAction(UIAction (handler: { [weak self] _ in self?.navigationController?.popViewController(animated: true) }), for: .touchUpInside)
            view.addSubview(previosButton)
    }
    
    private func setupConstraints() {
        previosButton.translatesAutoresizingMaskIntoConstraints = false
        previosButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        previosButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        }
    
    }
   
