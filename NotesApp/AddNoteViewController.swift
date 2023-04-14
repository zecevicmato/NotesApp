//
//  AddNoteViewController.swift
//  NotesApp
//
//  Created by Mato Zečević on 14.04.2023..
//

import UIKit

class AddNoteViewController: UIViewController {
    
    private let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemPink
        self.title = "Add Note"
        
        button.setTitle("Save", for: .normal)
        view.addSubview(button)
        button.backgroundColor = .systemPink
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 300, y: 70, width: 100, height: 20)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }
    
    @objc private func didTapButton(){
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
    }
    

    

}
