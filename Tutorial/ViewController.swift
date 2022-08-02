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
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let view = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
//        view.delegate = self
//        view.dataSource = self
        
        view.setCollectionViewLayout(layout, animated: false)
        view.isScrollEnabled = true
        view.bounces = true
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        draw()
    }

}

//MARK: - Draw
extension ViewController {
    private func draw() {
        collectionView.fit(into: self.view, with: 0)
    }
}

