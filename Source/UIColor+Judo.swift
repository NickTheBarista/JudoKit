//
//  UIColor+Judo.swift
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

import Foundation


public extension UIColor {

    /**
     inverse color
     
     - returns: the inverse color of the receiver
     */
    public func inverseColor() -> UIColor {
        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 0.0
        self.getRed(&r, green:&g, blue:&b, alpha:&a)
        return UIColor(red: 1 - r, green: 1 - g, blue: 1 - b, alpha: a)
    }
    
    
    /**
     calculates a weighed greyscale representation percentage of the receiver
     
     - returns: a greyscale representation percentage CGFloat
     */
    public func greyScale() -> CGFloat {
        // 0.299r + 0.587g + 0.114b
        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 0.0
        self.getRed(&r, green:&g, blue:&b, alpha:&a)
        let newValue: CGFloat = (0.299 * r + 0.587 * g + 0.114 * b)
        return newValue
    }
    
    
    /**
     helper method to identifiy wether to use a dark or light theme
     
     - returns: a boolean indicating to use dark or light mode
     */
    public static func colorMode() -> Bool {
        return JudoKit.tintColor.greyScale() < 0.5
    }
    
    
    /**
     dark gray color
     
     - returns: a UIColor object
     */
    public static func judoDarkGrayColor() -> UIColor {
        let dgc = UIColor(red: 75/255, green: 75/255, blue: 75/255, alpha: 1.0)
        if self.colorMode() {
            return dgc
        } else {
            return dgc.inverseColor()
        }
    }
    
    
    /**
     light dark gray color
     
     - returns: a UIColor object
     */
    public static func judoLightGrayColor() -> UIColor {
        let lgc = UIColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 1.0)
        if self.colorMode() {
            return lgc
        } else {
            return lgc.inverseColor()
        }
    }
    
    
    /**
     gray color
     
     - returns: a UIColor object
     */
    public static func judoGrayColor() -> UIColor {
        let gc = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
        if self.colorMode() {
            return gc
        } else {
            return gc.inverseColor()
        }
    }
    
    
    /**
     button color
     
     - returns: a UIColor object
     */
    public static func judoButtonColor() -> UIColor {
        return JudoKit.tintColor
    }
    
    
    /**
     button title color
     
     - returns: a UIColor object
     */
    public static func judoButtonTitleColor() -> UIColor {
        if self.colorMode() {
            return .whiteColor()
        } else {
            return .blackColor()
        }
    }
    
    
    /**
     background color of the loadingView
     
     - returns: a UIColor object
     */
    public static func judoLoadingBackgroundColor() -> UIColor {
        let lbc = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 0.8)
        if self.colorMode() {
            return lbc
        } else {
            return lbc.inverseColor()
        }
    }
    
    
    /**
     red color
     
     - returns: a UIColor object
     */
    public static func judoRedColor() -> UIColor {
        return UIColor(red: 235/255, green: 55/255, blue: 45/255, alpha: 1.0)
    }
    
    
    /**
     loading block color
     
     - returns: a UIColor object
     */
    public static func judoLoadingBlockViewColor() -> UIColor {
        if self.colorMode() {
            return .whiteColor()
        } else {
            return .blackColor()
        }
    }
    
    
    /**
     input field background color
     
     - returns: a UIColor object
     */
    public static func judoInputFieldBackgroundColor() -> UIColor {
        if self.colorMode() {
            return .whiteColor()
        } else {
            return .blackColor()
        }
    }
    
}
