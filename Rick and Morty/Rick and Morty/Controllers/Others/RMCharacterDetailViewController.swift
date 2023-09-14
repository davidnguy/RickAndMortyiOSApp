//
//  RMCharacterDetailViewController.swift
//  Rick and Morty
//
//  Created by David Nguyen on 03.01.23.
//

import UIKit

//Controller to show info about single Character
final class RMCharacterDetailViewController: UIViewController {

    private let viewModel: RMCharacterDetailViewViewModel
    
    init(viewModel: RMCharacterDetailViewViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil,
                   bundle: nil)
    }
    
    required init?(coder: NSCoder){
        fatalError("Unsupported")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = viewModel.title
    }
    
}
