//
//  ViewController.swift
//  NotesApp
//
//  Created by Mato Zečević on 14.04.2023..
//

import UIKit

class ViewController: UIViewController {
    
    private let addBtn: UIButton = {
        let addBtn = UIButton()
        addBtn.setBackgroundImage(UIImage(systemName: "plus"), for: .normal)
        addBtn.backgroundColor = .systemBackground
        return addBtn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
//        MARK - NASLOV
        let label = UILabel(frame: CGRect(x: 10, y: 80, width: 200, height: 50))
        label.text = "Notes"
        label.font = UIFont.boldSystemFont(ofSize: 36)
        view.addSubview(label)
        
//        MARK - "plus" button
        view.addSubview(addBtn)
        addBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            addBtn.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 65),
            addBtn.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20),
            addBtn.heightAnchor.constraint(equalToConstant: 25),
            addBtn.widthAnchor.constraint(equalToConstant: 25),
        ])
        
        addBtn.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton(){
        let addNoteViewController = AddNoteViewController()
        let navVC = UINavigationController(rootViewController: addNoteViewController)
//        navVC.modalPresentationStyle = .fullScreen
//        present(navVC,animated: true)
        navigationController?.pushViewController(navVC, animated: true)
    }
}

