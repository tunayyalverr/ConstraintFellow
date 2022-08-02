//
//  ViewController.swift
//  Tutorial
//
//  Created by Alver, Tunay on 1.08.2022.
//

import UIKit
import ConstraintFellow

class ViewController: UIViewController {
    
    // MARK: - UI
    private lazy var sampleView: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        return view
    }()

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepare()
        draw()
    }
    
    //MARK: - Prepare
    private func prepare() {
        
    }

}

//MARK: - Draw
extension ViewController {
    private func draw() {
        sampleView.fit(into: self.view, with: 0)
    }
}
