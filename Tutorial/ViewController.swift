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
        view.backgroundColor = .systemIndigo
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    private lazy var sampleView2: BaseView = {
        let view = BaseView()
        view.backgroundColor = .systemPurple
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 20
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
        self.view.backgroundColor = .black
    }

}

//MARK: - Draw
extension ViewController {
    private func draw() {
        //NOTE: - Example
        sampleView.fit(into: self.view, with: 80)
        
        //NOTE: - Example
        sampleView2.addInto(self.view)
        sampleView2.left(relation: .equal, to: self.view, with: 20)
        sampleView2.right(relation: .equal, to: self.view, with: 20)
        sampleView2.top(relation: .equal, toBottom: sampleView, with: 10)
        sampleView2.bottom(relation: .equal, toBottom: self.view, with: 20)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.sampleView.update(anchorType: .left, to: 20, duration: 0.3, parent: self.view)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.sampleView.update(anchorType: .right, to: 20, duration: 0.3, parent: self.view)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.sampleView.update(anchorType: .top, to: 40, duration: 0.3, parent: self.view)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.sampleView.update(anchorType: .bottom, to: self.view.frame.height / 2, duration: 0.3, parent: self.view)
        }
    }
}
