//
//  PayButton.swift
//  JudoKit
//
//  Copyright (c) 2015 Alternative Payments Ltd
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import UIKit

/**
 
 The PayButton is a button that is configured to layout a JudoPay button for the Transaction journey
 
 */
public class PayButton: UIButton {
    
    // MARK: initialization
    
    /**
    designated initialiser
    
    - returns: a PayButton object
    */
    public init() {
        super.init(frame: CGRectZero)
        self.setupView()
    }
    
    
    /**
     convenience initialiser
     
     - parameter frame: this value is ignored - view is sized via autolayout
     
     - returns: a PayButton object
     */
    convenience override public init(frame: CGRect) {
        self.init()
    }
    
    
    /**
     convenience initialiser
     
     - parameter aDecoder: ignored parameter
     
     - returns: a PayButton object
     */
    convenience required public init?(coder aDecoder: NSCoder) {
        self.init()
    }
    
    // MARK: View Setup
    
    /**
    Helper method to setup the view
    */
    public func setupView() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .judoButtonColor()
        self.setTitle("Pay", forState: .Normal)
        self.setTitleColor(.judoButtonTitleColor(), forState: .Normal)
        self.titleLabel?.font = UIFont.boldSystemFontOfSize(22)
    }
    
}
