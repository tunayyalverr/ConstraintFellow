//
//  ConstraintFellow.swift
//
//
//  Created by Alver, Tunay on 2.08.2022.
//

import UIKit

struct ConstraintFellow {
    
    public static func addAsSubview(view: UIView, into: UIView) {
        guard !view.isDescendant(of: into) else { return }
        into.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
    
}

//MARK: - AnchorType
public enum AnchorType {
    case left
    case leading
    case right
    case trailing
    case top
    case bottom
}

//MARK: - Relation
public enum Relation {
    case equal
    case equalOrGreater
    case equalOrLess
}

//MARK: - Constraintable
public protocol Constraintable {
    func fit(into: UIView, with: CGFloat)
    func left(into: UIView, relation: Relation, to: UIView, with: CGFloat)
    func leading(into: UIView, relation: Relation, to: UIView, with: CGFloat)
    func right(into: UIView, relation: Relation, to: UIView, with: CGFloat)
    func trailing(into: UIView, relation: Relation, to: UIView, with: CGFloat)
    func top(into: UIView, relation: Relation, to: UIView, with: CGFloat)
    func bottom(into: UIView, relation: Relation, to: UIView, with: CGFloat)
    func constraint(into: UIView, anchorType: AnchorType, relation: Relation, to: UIView, with: CGFloat)
}
