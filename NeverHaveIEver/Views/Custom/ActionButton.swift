//
//  ActionButton.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 06/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class ActionButton : UIButton {

    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.shadowRadius = newValue
            layer.masksToBounds = false
        }
    }

    @IBInspectable var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
            layer.shadowColor = UIColor.darkGray.cgColor
        }
    }

    @IBInspectable var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
            layer.shadowColor = UIColor.black.cgColor
            layer.masksToBounds = false
        }
    }
    
    @IBInspectable var startColor:   UIColor = .black { didSet { updateColors() }}
       @IBInspectable var endColor:     UIColor = .white { didSet { updateColors() }}
       @IBInspectable var startLocation: Double =   0.05 { didSet { updateLocations() }}
       @IBInspectable var endLocation:   Double =   0.95 { didSet { updateLocations() }}
       @IBInspectable var horizontalMode:  Bool =  false { didSet { updatePoints() }}
       @IBInspectable var diagonalMode:    Bool =  false { didSet { updatePoints() }}

       override public class var layerClass: AnyClass { CAGradientLayer.self }

       var gradientLayer: CAGradientLayer { layer as! CAGradientLayer }

       func updatePoints() {
           if horizontalMode {
               gradientLayer.startPoint = diagonalMode ? .init(x: 1, y: 0) : .init(x: 0, y: 0.5)
               gradientLayer.endPoint   = diagonalMode ? .init(x: 0, y: 1) : .init(x: 1, y: 0.5)
           } else {
               gradientLayer.startPoint = diagonalMode ? .init(x: 0, y: 0) : .init(x: 0.5, y: 0)
               gradientLayer.endPoint   = diagonalMode ? .init(x: 1, y: 1) : .init(x: 0.5, y: 1)
           }
       }
       func updateLocations() {
           gradientLayer.locations = [startLocation as NSNumber, endLocation as NSNumber]
       }
       func updateColors() {
           gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
       }
       override public func layoutSubviews() {
           super.layoutSubviews()
           updatePoints()
           updateLocations()
           updateColors()
       }

}
