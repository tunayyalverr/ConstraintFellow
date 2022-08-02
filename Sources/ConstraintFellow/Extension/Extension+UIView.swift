//
//  Extension+UIView.swift
//  
//
//  Created by Alver, Tunay on 2.08.2022.
//

import UIKit

//MARK: - Extension+UIView
extension UIView: Constraintable {
    //MARK: - Fit
    public func fit(into: UIView, with: CGFloat) {
        into.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.leftAnchor.constraint(equalTo: into.leftAnchor, constant: with).isActive = true
        self.rightAnchor.constraint(equalTo: into.rightAnchor, constant: -with).isActive = true
        self.topAnchor.constraint(equalTo: into.topAnchor, constant: with).isActive = true
        self.bottomAnchor.constraint(equalTo: into.bottomAnchor, constant: -with).isActive = true
    }
    
    //MARK: - Left & Leading
    public func left(into: UIView, relation: Relation, to: UIView, with: CGFloat) {
        into.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        switch relation {
        case .equal:
            self.leftAnchor.constraint(equalTo: into.leftAnchor, constant: with).isActive = true
        case .equalOrGreater:
            self.leftAnchor.constraint(greaterThanOrEqualTo: into.leftAnchor, constant: with).isActive = true
        case .equalOrLess:
            self.leftAnchor.constraint(lessThanOrEqualTo: into.leftAnchor, constant: with).isActive = true
        }
    }
    
    public func leading(into: UIView, relation: Relation, to: UIView, with: CGFloat) {
        into.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        switch relation {
        case .equal:
            self.leadingAnchor.constraint(equalTo: into.leadingAnchor, constant: with).isActive = true
        case .equalOrGreater:
            self.leadingAnchor.constraint(greaterThanOrEqualTo: into.leadingAnchor, constant: with).isActive = true
        case .equalOrLess:
            self.leadingAnchor.constraint(lessThanOrEqualTo: into.leadingAnchor, constant: with).isActive = true
        }
    }
    
    //MARK: - Right & Trailing
    public func right(into: UIView, relation: Relation, to: UIView, with: CGFloat) {
        into.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        switch relation {
        case .equal:
            self.leadingAnchor.constraint(equalTo: into.leadingAnchor, constant: with).isActive = true
        case .equalOrGreater:
            self.leadingAnchor.constraint(greaterThanOrEqualTo: into.leadingAnchor, constant: with).isActive = true
        case .equalOrLess:
            self.leadingAnchor.constraint(lessThanOrEqualTo: into.leadingAnchor, constant: with).isActive = true
        }
    }
    
    public func trailing(into: UIView, relation: Relation, to: UIView, with: CGFloat) {
        into.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        switch relation {
        case .equal:
            self.trailingAnchor.constraint(equalTo: into.trailingAnchor, constant: with).isActive = true
        case .equalOrGreater:
            self.trailingAnchor.constraint(greaterThanOrEqualTo: into.trailingAnchor, constant: with).isActive = true
        case .equalOrLess:
            self.trailingAnchor.constraint(lessThanOrEqualTo: into.trailingAnchor, constant: with).isActive = true
        }
    }
    
    //MARK: - Top & Bottom
    public func top(into: UIView, relation: Relation, to: UIView, with: CGFloat) {
        into.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        switch relation {
        case .equal:
            self.topAnchor.constraint(equalTo: into.topAnchor, constant: with).isActive = true
        case .equalOrGreater:
            self.topAnchor.constraint(greaterThanOrEqualTo: into.topAnchor, constant: with).isActive = true
        case .equalOrLess:
            self.topAnchor.constraint(lessThanOrEqualTo: into.topAnchor, constant: with).isActive = true
        }
    }
    
    public func bottom(into: UIView, relation: Relation, to: UIView, with: CGFloat) {
        into.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        switch relation {
        case .equal:
            self.bottomAnchor.constraint(equalTo: into.bottomAnchor, constant: with).isActive = true
        case .equalOrGreater:
            self.bottomAnchor.constraint(greaterThanOrEqualTo: into.bottomAnchor, constant: with).isActive = true
        case .equalOrLess:
            self.bottomAnchor.constraint(lessThanOrEqualTo: into.bottomAnchor, constant: with).isActive = true
        }
    }
    
    
    //MARK: - Constraint
    public func constraint(into: UIView, anchorType: AnchorType, relation: Relation, to: UIView, with: CGFloat) {
        into.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        switch anchorType {
        case .left:
            self.left(into: into, relation: relation, to: to, with: with)
        case .leading:
            self.leading(into: into, relation: relation, to: to, with: with)
        case .right:
            self.right(into: into, relation: relation, to: to, with: with)
        case .trailing:
            self.trailing(into: into, relation: relation, to: to, with: with)
        case .top:
            self.top(into: into, relation: relation, to: to, with: with)
        case .bottom:
            self.bottom(into: into, relation: relation, to: to, with: with)
        }
    }
}
