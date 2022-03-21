//
//  TabBarVCMain.swift
//  13 video Skill 13.2
//
//  Created by Даша Черняева on 11.03.2022.
//

import UIKit

class TabBarVCMain:UITabBarController {
    

let vc1 = firstViewController()
let vc2 = secondViewController()
let vc3 = ThirdViewController()
let vc4 = FourViewController()
let vc22 = SecondSecondViewController()
let vc32 = ThirdSecondViewController()
let vc33 = ThirdThirdViewController()



override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .systemBackground
    tabBar.tintColor = .label
    vc1.tabBarItem.image = UIImage(systemName: "book")
    setupVCs()
}

    // функция на создание навигационного контроллера
    func createNavController(for rootViewController: UIViewController,
                             title: String,
                             image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.image = image
        navController.tabBarItem.title = title
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
    
    // функция на изображение навигационных контролллеров и привязки к экранам
    func setupVCs() {
        viewControllers = [
            vc1,
            createNavController(for: vc2, title: NSLocalizedString("house", comment: ""), image: UIImage(systemName: "house")!),
            createNavController(for: vc3, title: NSLocalizedString("person", comment: ""), image: UIImage(systemName: "person")!),
            createNavController(for: vc4, title: NSLocalizedString("highlighter", comment: ""), image: UIImage(systemName: "highlighter")!)]
    }
}

extension UIViewController {
    
    func setupButton() -> UIButton {
        let nextButton = UIButton()
        view.addSubview(nextButton)
        nextButton.setTitle("Next Scene", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return nextButton
    }
    
    // функция для всплывающих окон
    func setupAlert() {
        let alert = UIAlertController(title: "Последний экран", message: "Это послдений экран", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Close", style: .cancel, handler: .none))
        present(alert, animated: true)
    }
}
