//
//  FontStyling Library.swift
//  Fonts
//
//  Created by Chan Choon Hee on 23/02/2017.
//  Copyright © 2017 Chan Choon Hee. All rights reserved.
//

import Foundation
import UIKit


class Style{
    
    static  func readPropertyList()-> (sizeDict : NSDictionary, colorDict: NSDictionary ,compoDict: NSDictionary){
        var propertyListFormat =  PropertyListSerialization.PropertyListFormat.xml //Format of the Property List.
        var sizePlistData: [String: [String: Any]] = [:] //Our data
        var colorsPlistData: [String:[String:Any]] = [:]
        var componentsPlistData: [String:[String:Any]] = [:]
        let sizePlistPath: String? = Bundle.main.path(forResource: "Size", ofType: "plist")! //the path of the data
        let colorsPlistPath: String? = Bundle.main.path(forResource: "Colors", ofType: "plist")! //the path of the data
        let componentsPlistPath: String? = Bundle.main.path(forResource: "Components", ofType: "plist")! //the path of the data
        let sizePlistXML = FileManager.default.contents(atPath: sizePlistPath!)!
        let colorsPlistXML = FileManager.default.contents(atPath: colorsPlistPath!)!
        let componentsPlistXML = FileManager.default.contents(atPath: componentsPlistPath!)!
        do {//convert the data to a dictionary and handle errors.
            sizePlistData = try PropertyListSerialization.propertyList(from: sizePlistXML, options: .mutableContainersAndLeaves, format: &propertyListFormat) as! [String: [String:AnyObject]]
            colorsPlistData = try PropertyListSerialization.propertyList(from: colorsPlistXML, options: .mutableContainersAndLeaves, format: &propertyListFormat) as! [String: [String:AnyObject]]
            componentsPlistData = try PropertyListSerialization.propertyList(from: componentsPlistXML, options: .mutableContainersAndLeaves, format: &propertyListFormat) as! [String: [String:AnyObject]]
            
        }catch {
            print("Error reading plist: \(error), format: \(propertyListFormat)")
            
        }
        
        let sizeDict = sizePlistData
        let colorDict = colorsPlistData
        let compoDict = componentsPlistData
        return (sizeDict as NSDictionary, colorDict as NSDictionary, compoDict as NSDictionary)
        
    }
    
   private static let colDict: NSDictionary = readPropertyList().colorDict
   private static let componentDict: NSDictionary = readPropertyList().compoDict
    private static let sizeDict: NSDictionary = readPropertyList().sizeDict
    /// Sets the text attributes for UITextField object e.g. font color, font size, and font type.
    ///
    /// - Parameters:
    ///   - component: Name of component
    ///   - textField: The text field object
    ///   - isSelected: the state of the text field
    static func setTextAttributes(component: String, textField: UITextField, isSelected : Bool? = false){
        let compDict = componentDict
        let content = textField.text
        let plist = compDict[component] as! NSDictionary
        var fColor : String = "Black"
        var fontType : String = "ArialMT"
        var fontSize : CGFloat = 12
        if isSelected! {
            fColor = (plist["FontColorSelected"]) as! String
            if let haveFontSelected = (plist["FontTypeSelected"]){
                fontType = haveFontSelected as! String
                fontSize = (plist["FontSize"]) as! CGFloat
            }
        }else{
            fColor = (plist["FontColor"]) as! String
            fontType = (plist["FontType"]) as! String
            fontSize = (plist["FontSize"]) as! CGFloat
        }
        let font = UIFont(name: fontType , size: fontSize)
        let color = getUIColor(colorName: fColor)
        let attributes: [String:Any] = [
            NSFontAttributeName: font as Any,
            NSForegroundColorAttributeName: color]
        let attributedString = NSMutableAttributedString(string: content!, attributes: attributes)
        textField.attributedText = attributedString
        
        
    }
    
    
    
    /// Sets the text attributes for UILabel object e.g. font color, font size, and font type.
    ///
    /// - Parameters:
    ///   - component: Name of component
    ///   - label: The label object
    ///   - isSelected: the state of the label
    static func setTextAttributes(component: String, label: UILabel, isSelected : Bool? = false){
        
        let compDict = componentDict
        let plist = compDict[component] as! NSDictionary
        let content = label.text
        var fColor : String = "Black"
        var fontType : String = "ArialMT"
        var fontSize : CGFloat = 12
        if isSelected! {
            fColor = (plist["FontColorSelected"]) as! String
            if let haveFontSelected = (plist["FontTypeSelected"]){
                fontType = haveFontSelected as! String
                fontSize = (plist["FontSize"]) as! CGFloat
            }
        }else{
            fColor = (plist["FontColor"]) as! String
            fontType = (plist["FontType"]) as! String
            fontSize = (plist["FontSize"]) as! CGFloat
        }
        let font = UIFont(name: fontType , size: fontSize)
        let color = getUIColor(colorName: fColor)
        let attributes: [String:Any] = [
            NSFontAttributeName: font as Any,
            NSForegroundColorAttributeName: color]
        let attributedString = NSMutableAttributedString(string: content!, attributes: attributes)
        label.attributedText = attributedString
        
        
        
    }
    /// Sets the text attributes for UITextView object e.g. font color, font size, and font type.
    ///
    /// - Parameters:
    ///   - component: Name of component
    ///   - textView: The text view object
    ///   - isSelected: the state of the text view
    static func setTextAttributes(component: String, textView: UITextView, isSelected : Bool? = false){
        let content = textView.text
        let compDict = componentDict
        let plist = compDict[component] as! NSDictionary
        var fColor : String = "Black"
        var fontType : String = "ArialMT"
        var fontSize : CGFloat = 12
        if isSelected! {
            fColor = (plist["FontColorSelected"]) as! String
            if let haveFontSelected = (plist["FontTypeSelected"]){
                fontType = haveFontSelected as! String
                fontSize = (plist["FontSize"]) as! CGFloat
            }
        }else{
            fColor = (plist["FontColor"]) as! String
            fontType = (plist["FontType"]) as! String
            fontSize = (plist["FontSize"]) as! CGFloat
        }
        let font = UIFont(name: fontType , size: fontSize)
        let color = getUIColor(colorName: fColor)
        let attributes: [String:Any] = [
            NSFontAttributeName: font as Any,
            NSForegroundColorAttributeName: color]
        let attributedString = NSMutableAttributedString(string: content!, attributes: attributes)
        textView.attributedText = attributedString
        
    }
    
    /// Sets the text attributes for button object e.g. font color, font size, font type, and background color
    ///
    /// - Parameters:
    ///   - component: Name of component
    ///   - button: The button object
    ///   - isSelected: the state of the button
    static   func setTextAttributes(component : String, button: UIButton, isSelected : Bool? = false)  {
        let content = button.titleLabel
        let compDict = componentDict
        let plist = compDict[component] as! NSDictionary
        var fColor : String = "Black"
        var fontType : String = "ArialMT"
        var fontSize : CGFloat = 12
        if isSelected! {
            fColor = (plist["FontColorSelected"]) as! String
            if let haveFontSelected = (plist["FontTypeSelected"]){
                fontType = haveFontSelected as! String
                fontSize = (plist["FontSize"]) as! CGFloat
            }
        }else{
            fColor = (plist["FontColor"]) as! String
            fontType = (plist["FontType"]) as! String
            fontSize = (plist["FontSize"]) as! CGFloat
        }
        let font = UIFont(name: fontType , size: fontSize)
        let color = getUIColor(colorName: fColor)
        let attributes: [String:Any] = [
            NSFontAttributeName: font as Any,
            NSForegroundColorAttributeName: color]
        let attributedString = NSMutableAttributedString(string: (content?.text)!, attributes: attributes)
        button.setAttributedTitle(attributedString, for: .normal)
        if isSelected! {
            if let bgdColor : String = (plist["BackgroundColorSelected"]) as? String{
                let bkdcolor = getUIColor(colorName: bgdColor)
                button.backgroundColor = bkdcolor
            }else{
                if let bgdColor : String = (plist["BackgroundColor"]) as? String{
                    let bkdcolor = getUIColor(colorName: bgdColor)
                    button.backgroundColor = bkdcolor
                }
            }
            
        }
    }
    
    /// Gets the component size in percentage from the plist and converts it into pixels
    ///
    /// - Parameter component: The component which the size is to be obtained
    /// - Returns: Returns the width and size in a tuple which can be accessed by e.g. width = size.0, height = size.1
    static func getComponentSize(component: String) -> (width: CGFloat, height: CGFloat) {
        let sizeDict = self.sizeDict
        let sizePlist = sizeDict[component] as! NSDictionary
        let hpct = (sizePlist["Width"]) as! CGFloat
        let wpct = (sizePlist["Height"]) as! CGFloat
        let cWidth = (hpct/100 * screenHeight )
        let cHeight = (wpct/100 * screenWidth )
        let size = (width : cWidth , height : cHeight)
        print(size)
        print("\(screenHeight), \(screenWidth)")
        return size
        
    }
    /// Retrieves the UIColor object based on the RGBA values from the plist
    ///
    /// - Parameter color1: The color name
    /// - Returns: UIColor object loaded with the RGBA Values
  private  static func getUIColor(colorName : String)-> UIColor {
        let colorDict = colDict
        let colorPlist = colorDict[colorName] as! NSDictionary
        let red = colorPlist["Red"] as! Float
        let blue = colorPlist["Blue"] as! Float
        let green = colorPlist["Green"] as! Float
        let alpha = colorPlist["Alpha"] as! Float
        let color = UIColor(colorLiteralRed: red  , green: green , blue: blue , alpha: alpha )
        return color as UIColor
    }
    
    /// Retrieves the attributes of the component
    ///
    /// - Parameter component: component name
    static  func printAttributes(component: String){
        let compDict = componentDict
        let plist = compDict[component] as! NSDictionary
        let fColor = (plist["FontColor"]) as! String
        let fontType = (plist["FontType"]) as! String
        let fontSize = (plist["FontSize"]) as! CGFloat
        var attributes = "Font color : \(fColor), Font Type: \(fontType), Font Size:\(fontSize)"
        if let bgdColor : String = ((plist["BackgroundColor"]) as? String){
            attributes += ", Background Color: \(bgdColor)"
        }
        if let selected : String = ((plist["FontColorSelected"]) as? String){
            attributes += ", isSelected: \(selected)"
        }
        
        print(attributes)
    }
    /// Retrieves the UIFont object based on the values from the plist
    ///
    /// - Parameter component: The component name
    /// - isSelected: the state of the UIView object
    /// - Returns: UIFont object loaded with the RGBA Values
    
    static func getUIFont(component : String, isSelected: Bool? = false) -> UIFont  {
        
        let compDict = componentDict
        let fontDict = compDict[component] as! NSDictionary
        var fontType : String = "ArialMT"
        var fontSize : CGFloat = 12
        if isSelected! {
            if let haveFontSelected = (fontDict["FontTypeSelected"]){
                fontType = haveFontSelected as! String
                fontSize = (fontDict["FontSize"]) as! CGFloat
            }
        }else{
            fontType = (fontDict["FontType"]) as! String
            fontSize = (fontDict["FontSize"]) as! CGFloat
        }
        let font = (UIFont(name: fontType , size: fontSize))
        return font! as UIFont
    }
    
    /// Retrieves the UIColor object based on the values from the plist
    ///
    /// - Parameter component: The component name
    /// - isSelected: the state of the UIView object
    /// - Returns: UIColor object loaded with the RGBA Values
    static func getTextColor(component : String, isSelected : Bool? = false) -> UIColor  {
        let compDict = componentDict
        let plist = compDict[component] as! NSDictionary
        var fColor : String = "Black"
        if isSelected! {
            fColor = (plist["FontColorSelected"]) as! String
            
        }
        else{
            fColor = (plist["FontColor"]) as! String
        }
        let color = getUIColor(colorName: fColor)
        return color
        
    }
    /// Retrieves the UIColor object based on the values from the plist
    ///
    /// - Parameter component: The component name
    /// - isSelected: the state of the UIView object
    /// - Returns: UIColor object loaded with the RGBA Values
    static func getBackgroundColor(component : String, isSelected : Bool? = false) -> UIColor{
        let compDict = componentDict
        let plist = compDict[component] as! NSDictionary
        var bkdcolor : UIColor = UIColor.white
        if isSelected! {
            if let bgdColor : String = (plist["BackgroundColorSelected"]) as? String{
                bkdcolor = getUIColor(colorName: bgdColor)
                
            }
        }
        else{
            if let bgdColor : String = (plist["BackgroundColor"]) as? String{
                bkdcolor = getUIColor(colorName: bgdColor)
            }
        }
        return bkdcolor
    }

    
   
   
}











