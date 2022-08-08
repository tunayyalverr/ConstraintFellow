//
//  Extension+UIView+Constraintable.swift
//  
//
//  Created by Alver, Tunay on 2.08.2022.
//

import UIKit

//MARK: - Extension+UIView+Constraintable
extension UIView: Constraintable {
    
    //MARK: - Fit
    public func fit(into: UIView, with: CGFloat) {
        ConstraintFellow.addAsSubview(view: self, into: into)
        if var view = self as? ConstraintUpdatable {
            view.leftConstraint = self.leftAnchor.constraint(equalTo: into.leftAnchor, constant: with)
            view.leftConstraint?.isActive = true
            
            view.rightConstraint = self.rightAnchor.constraint(equalTo: into.rightAnchor, constant: -with)
            view.rightConstraint?.isActive = true
            
            view.topConstraint = self.topAnchor.constraint(equalTo: into.topAnchor, constant: with)
            view.topConstraint?.isActive = true
            
            view.bottomConstraint = self.bottomAnchor.constraint(equalTo: into.bottomAnchor, constant: -with)
            view.bottomConstraint?.isActive = true
        } else {
            self.leftAnchor.constraint(equalTo: into.leftAnchor, constant: with).isActive = true
            self.rightAnchor.constraint(equalTo: into.rightAnchor, constant: -with).isActive = true
            self.topAnchor.constraint(equalTo: into.topAnchor, constant: with).isActive = true
            self.bottomAnchor.constraint(equalTo: into.bottomAnchor, constant: -with).isActive = true
        }
    }
    
    //MARK: - Left & Leading
    public func left(into: UIView, relation: Relation, to: UIView, with: CGFloat) {
        ConstraintFellow.addAsSubview(view: self, into: into)
        switch relation {
        case .equal:
            if var view = self as? ConstraintUpdatable {
                view.leftConstraint = self.leftAnchor.constraint(equalTo: into.leftAnchor, constant: with)
                view.leftConstraint?.isActive = true
            } else {
                self.leftAnchor.constraint(equalTo: into.leftAnchor, constant: with).isActive = true
            }
        case .equalOrGreater:
            if var view = self as? ConstraintUpdatable {
                view.leftConstraint = self.leftAnchor.constraint(greaterThanOrEqualTo: into.leftAnchor, constant: with)
                view.leftConstraint?.isActive = true
            } else {
                self.leftAnchor.constraint(greaterThanOrEqualTo: into.leftAnchor, constant: with).isActive = true
            }
        case .equalOrLess:
            if var view = self as? ConstraintUpdatable {
                view.leftConstraint = self.leftAnchor.constraint(lessThanOrEqualTo: into.leftAnchor, constant: with)
                view.leftConstraint?.isActive = true
            } else {
                self.leftAnchor.constraint(lessThanOrEqualTo: into.leftAnchor, constant: with).isActive = true
            }
        }
    }
    
    public func leading(into: UIView, relation: Relation, to: UIView, with: CGFloat) {
        ConstraintFellow.addAsSubview(view: self, into: into)
        switch relation {
        case .equal:
            if var view = self as? ConstraintUpdatable {
                view.leadingConstraint = self.leadingAnchor.constraint(equalTo: into.leadingAnchor, constant: with)
                view.leadingConstraint?.isActive = true
            } else {
                self.leadingAnchor.constraint(equalTo: into.leadingAnchor, constant: with).isActive = true
            }
        case .equalOrGreater:
            if var view = self as? ConstraintUpdatable {
                view.leadingConstraint = self.leadingAnchor.constraint(greaterThanOrEqualTo: into.leadingAnchor, constant: with)
                view.leadingConstraint?.isActive = true
            } else {
                self.leadingAnchor.constraint(greaterThanOrEqualTo: into.leadingAnchor, constant: with).isActive = true
            }
        case .equalOrLess:
            if var view = self as? ConstraintUpdatable {
                view.leadingConstraint = self.leadingAnchor.constraint(lessThanOrEqualTo: into.leadingAnchor, constant: with)
                view.leadingConstraint?.isActive = true
            } else {
                self.leadingAnchor.constraint(lessThanOrEqualTo: into.leadingAnchor, constant: with).isActive = true
            }
        }
    }
    
    //MARK: - Right & Trailing
    public func right(into: UIView, relation: Relation, to: UIView, with: CGFloat) {
        ConstraintFellow.addAsSubview(view: self, into: into)
        switch relation {
        case .equal:
            if var view = self as? ConstraintUpdatable {
                view.rightConstraint = self.rightAnchor.constraint(equalTo: into.rightAnchor, constant: with)
                view.rightConstraint?.isActive = true
            } else {
                self.rightAnchor.constraint(equalTo: into.rightAnchor, constant: -with).isActive = true
            }
        case .equalOrGreater:
            if var view = self as? ConstraintUpdatable {
                view.rightConstraint = self.rightAnchor.constraint(greaterThanOrEqualTo: into.rightAnchor, constant: with)
                view.rightConstraint?.isActive = true
            } else {
                self.rightAnchor.constraint(greaterThanOrEqualTo: into.rightAnchor, constant: -with).isActive = true
            }
        case .equalOrLess:
            if var view = self as? ConstraintUpdatable {
                view.rightConstraint = self.rightAnchor.constraint(lessThanOrEqualTo: into.rightAnchor, constant: with)
                view.rightConstraint?.isActive = true
            } else {
                self.rightAnchor.constraint(lessThanOrEqualTo: into.rightAnchor, constant: -with).isActive = true
            }
        }
    }
    
    public func trailing(into: UIView, relation: Relation, to: UIView, with: CGFloat) {
        ConstraintFellow.addAsSubview(view: self, into: into)
        switch relation {
        case .equal:
            if var view = self as? ConstraintUpdatable {
                view.trailingConstraint = self.trailingAnchor.constraint(equalTo: into.trailingAnchor, constant: with)
                view.trailingConstraint?.isActive = true
            } else {
                self.trailingAnchor.constraint(equalTo: into.trailingAnchor, constant: -with).isActive = true
            }
        case .equalOrGreater:
            if var view = self as? ConstraintUpdatable {
                view.trailingConstraint = self.trailingAnchor.constraint(greaterThanOrEqualTo: into.trailingAnchor, constant: with)
                view.trailingConstraint?.isActive = true
            } else {
                self.trailingAnchor.constraint(greaterThanOrEqualTo: into.trailingAnchor, constant: -with).isActive = true
            }
        case .equalOrLess:
            if var view = self as? ConstraintUpdatable {
                view.trailingConstraint = self.trailingAnchor.constraint(lessThanOrEqualTo: into.trailingAnchor, constant: with)
                view.trailingConstraint?.isActive = true
            } else {
                self.trailingAnchor.constraint(lessThanOrEqualTo: into.trailingAnchor, constant: -with).isActive = true
            }
        }
    }
    
    //MARK: - Top & Bottom
    public func top(into: UIView, relation: Relation, to: UIView, with: CGFloat) {
        ConstraintFellow.addAsSubview(view: self, into: into)
        switch relation {
        case .equal:
            if var view = self as? ConstraintUpdatable {
                view.topConstraint = self.topAnchor.constraint(equalTo: into.topAnchor, constant: with)
                view.topConstraint?.isActive = true
            } else {
                self.topAnchor.constraint(equalTo: into.topAnchor, constant: with).isActive = true
            }
        case .equalOrGreater:
            if var view = self as? ConstraintUpdatable {
                view.topConstraint = self.topAnchor.constraint(greaterThanOrEqualTo: into.topAnchor, constant: with)
                view.topConstraint?.isActive = true
            } else {
                self.topAnchor.constraint(greaterThanOrEqualTo: into.topAnchor, constant: with).isActive = true
            }
        case .equalOrLess:
            if var view = self as? ConstraintUpdatable {
                view.topConstraint = self.topAnchor.constraint(lessThanOrEqualTo: into.topAnchor, constant: with)
                view.topConstraint?.isActive = true
            } else {
                self.topAnchor.constraint(lessThanOrEqualTo: into.topAnchor, constant: with).isActive = true
            }
        }
    }
    
    public func bottom(into: UIView, relation: Relation, to: UIView, with: CGFloat) {
        ConstraintFellow.addAsSubview(view: self, into: into)
        switch relation {
        case .equal:
            if var view = self as? ConstraintUpdatable {
                view.bottomConstraint = self.topAnchor.constraint(equalTo: into.bottomAnchor, constant: with)
                view.bottomConstraint?.isActive = true
            } else {
                self.bottomAnchor.constraint(equalTo: into.bottomAnchor, constant: -with).isActive = true
            }
        case .equalOrGreater:
            if var view = self as? ConstraintUpdatable {
                view.bottomConstraint = self.topAnchor.constraint(greaterThanOrEqualTo: into.bottomAnchor, constant: with)
                view.bottomConstraint?.isActive = true
            } else {
                self.bottomAnchor.constraint(greaterThanOrEqualTo: into.bottomAnchor, constant: -with).isActive = true
            }
        case .equalOrLess:
            if var view = self as? ConstraintUpdatable {
                view.bottomConstraint = self.topAnchor.constraint(lessThanOrEqualTo: into.bottomAnchor, constant: with)
                view.bottomConstraint?.isActive = true
            } else {
                self.bottomAnchor.constraint(lessThanOrEqualTo: into.bottomAnchor, constant: -with).isActive = true
            }
        }
    }
    
    //MARK: - Height & Width
    public func height(into: UIView, relation: Relation, with: CGFloat) {
        ConstraintFellow.addAsSubview(view: self, into: into)
        switch relation {
        case .equal:
            if var view = self as? ConstraintUpdatable {
                view.heightConstraint = self.heightAnchor.constraint(equalToConstant: with)
                view.heightConstraint?.isActive = true
            } else {
                self.heightAnchor.constraint(equalToConstant: with).isActive = true
            }
        case .equalOrGreater:
            if var view = self as? ConstraintUpdatable {
                view.heightConstraint = self.heightAnchor.constraint(greaterThanOrEqualToConstant: with)
                view.heightConstraint?.isActive = true
            } else {
                self.heightAnchor.constraint(greaterThanOrEqualToConstant: with).isActive = true
            }
        case .equalOrLess:
            if var view = self as? ConstraintUpdatable {
                view.heightConstraint = self.heightAnchor.constraint(lessThanOrEqualToConstant: with)
                view.heightConstraint?.isActive = true
            } else {
                self.heightAnchor.constraint(lessThanOrEqualToConstant: with).isActive = true
            }
        }
    }
    
    public func width(into: UIView, relation: Relation, with: CGFloat) {
        ConstraintFellow.addAsSubview(view: self, into: into)
        switch relation {
        case .equal:
            if var view = self as? ConstraintUpdatable {
                view.widthConstraint = self.heightAnchor.constraint(equalToConstant: with)
                view.widthConstraint?.isActive = true
            } else {
                self.widthAnchor.constraint(equalToConstant: with).isActive = true
            }
        case .equalOrGreater:
            if var view = self as? ConstraintUpdatable {
                view.widthConstraint = self.heightAnchor.constraint(greaterThanOrEqualToConstant: with)
                view.widthConstraint?.isActive = true
            } else {
                self.widthAnchor.constraint(greaterThanOrEqualToConstant: with).isActive = true
            }
        case .equalOrLess:
            if var view = self as? ConstraintUpdatable {
                view.widthConstraint = self.heightAnchor.constraint(lessThanOrEqualToConstant: with)
                view.widthConstraint?.isActive = true
            } else {
                self.widthAnchor.constraint(lessThanOrEqualToConstant: with).isActive = true
            }
        }
    }
    
    //MARK: - Constraint
    public func constraint(into: UIView, anchorType: AnchorType, relation: Relation, to: UIView, with: CGFloat) {
        ConstraintFellow.addAsSubview(view: self, into: into)
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
        case .height:
            self.height(into: into, relation: relation, with: with)
        case .width:
            self.width(into: into, relation: relation, with: with)
        }
    }
    
    //MARK: - Update
    public func get(anchorType: AnchorType) -> NSLayoutConstraint? {
        guard let view = self as? ConstraintUpdatable else { return nil }
        switch anchorType {
        case .left:
            return view.leftConstraint
        case .leading:
            return view.leadingConstraint
        case .right:
            return view.rightConstraint
        case .trailing:
            return view.trailingConstraint
        case .top:
            return view.topConstraint
        case .bottom:
            return view.bottomConstraint
        case .height:
            return view.heightConstraint
        case .width:
            return view.widthConstraint
        }
    }
    
    public func update(anchorType: AnchorType, to: CGFloat, duration: CGFloat, parent: UIView) {
        UIView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.2, options: .curveEaseIn) {
            switch anchorType {
            case .left, .leading, .top, .height, .width:
                self.get(anchorType: anchorType)?.constant = to
            case .right, .trailing, .bottom:
                self.get(anchorType: anchorType)?.constant = -to
            }
            parent.layoutIfNeeded()
        }
    }
}
