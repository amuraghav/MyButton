//
//  PRWalletButton.swift
//  Wallet
//
//  Created by Pankaj Raghav on 09/09/19.
//  Copyright © 2019 Pankaj Raghav. All rights reserved.
//

import UIKit
@IBDesignable
open class PRRoundButton: UIButton {


        
        // MARK: IBInspectable properties
        @IBInspectable var cornerRadius: CGFloat = 0 {
            didSet {
                let maximumCornerRadius = min(frame.width, frame.height) / 2
                layer.cornerRadius = min(cornerRadius, maximumCornerRadius)
                layer.masksToBounds = cornerRadius > 0
            }
        }
        
        @IBInspectable var borderWidth: CGFloat = 0 {
            didSet {
                layer.borderWidth = borderWidth
            }
        }
        
        @IBInspectable var borderColor: UIColor? {
            didSet {
                layer.borderColor = borderColor?.cgColor
            }
        }
        
        @IBInspectable var backgroundDefaultColor: UIColor? {
            didSet {
                backgroundColor = backgroundDefaultColor
            }
        }
        
        @IBInspectable var backgroundHighlightedColor: UIColor?
        
        override open var isHighlighted: Bool {
            didSet {
                if !oldValue {
                    backgroundDefaultColor = backgroundColor
                }
                if let backgroundHighlightedColor = backgroundHighlightedColor {
                    backgroundColor = isHighlighted ? backgroundHighlightedColor : backgroundDefaultColor
                }
            }
        }
        
    
    

}
