//
//  BaseView.swift
//  Tutorial
//
//  Created by Alver, Tunay on 2.08.2022.
//

import UIKit
import ConstraintFellow

class BaseView: UIView, ConstraintUpdatable {
    var leftConstraint: NSLayoutConstraint?
    var leadingConstraint: NSLayoutConstraint?
    var rightConstraint: NSLayoutConstraint?
    var trailingConstraint: NSLayoutConstraint?
    var topConstraint: NSLayoutConstraint?
    var bottomConstraint: NSLayoutConstraint?
}
