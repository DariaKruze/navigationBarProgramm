//
//  ViewController.swift
//  13 video Skill 13.2
//
//  Created by Даша Черняева on 10.03.2022.
//

import UIKit

class ViewController: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
        setupConstraints()
    }

    private func setupViews() {
        nextButton.setTitle("Next Scene", for: .normal)
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.addAction(UIAction (handler: { [weak self] _ in self?.navigationController?.pushViewController(FinishViewController(), animated: true) }), for: .touchUpInside)
            view.addSubview(nextButton)
    }
    
    private func setupConstraints() {
            nextButton.translatesAutoresizingMaskIntoConstraints = false
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        }
    deinit {
        print("deinit")
    }
}

extension ViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("viewDidDisappear")
    }
    
    override func loadView() {
        super.loadView()
        
        print("loadView")
    }
}

