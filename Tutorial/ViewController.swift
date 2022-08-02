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
//        sampleView.fit(into: self.view, with: 0)
        sampleView.constraint(into: self.view, anchorType: .left, relation: .equal, to: self.view, with: 20)
        sampleView.constraint(into: self.view, anchorType: .right, relation: .equal, to: self.view, with: 40)
        sampleView.constraint(into: self.view, anchorType: .top, relation: .equal, to: self.view, with: 80)
        sampleView.constraint(into: self.view, anchorType: .bottom, relation: .equal, to: self.view, with: 160)
    }
}
