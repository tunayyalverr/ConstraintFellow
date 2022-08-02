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
    private lazy var sampleView: BaseView = {
        let view = BaseView()
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
        sampleView.fit(into: self.view, with: 20)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.sampleView.update(anchorType: .left, to: 100, duration: 0.3, parent: self.view)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.sampleView.update(anchorType: .right, to: 100, duration: 0.3, parent: self.view)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.sampleView.update(anchorType: .top, to: 100, duration: 0.3, parent: self.view)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.sampleView.update(anchorType: .bottom, to: 100, duration: 0.3, parent: self.view)
        }
//        sampleView.constraint(into: self.view, anchorType: .leading, relation: .equal, to: self.view, with: 20)
//        sampleView.constraint(into: self.view, anchorType: .trailing, relation: .equal, to: self.view, with: 40)
//        sampleView.constraint(into: self.view, anchorType: .top, relation: .equal, to: self.view, with: 80)
//        sampleView.constraint(into: self.view, anchorType: .bottom, relation: .equal, to: self.view, with: 160)
    }
}
