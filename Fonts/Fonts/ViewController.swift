//
//  ViewController.swift
//  Fonts
//
//  Created by Chan Choon Hee on 02/02/2017.
//  Copyright © 2017 Chan Choon Hee. All rights reserved.
//

import UIKit

//let path = Bundle.main.path(forResource: "Property List", ofType: "plist")!
//let url = URL(fileURLWithPath: path)
//let data = try! Data(contentsOf: url)
//let plist = try! PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: nil)
//
//let dictArray = plist as! Dictionary<String, Dictionary<String, Any>>
let screenSize = UIScreen.main.bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height


func checkScreenSize(size: CGSize) {
    print(screenWidth*(size.width/100), screenHeight*(size.height/100))
}
let sizetest  = CGSize(width: 10.0, height: 50.0)

class ViewController: UIViewController {


    @IBAction func ColorMe(_ sender: Any) {
        print("HelloWorld")
    }
    @IBOutlet weak var textview1: UITextView!
    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var HelloButton: UIButton!
 
    
  
    

    @IBOutlet weak var everestCMed: UILabel!
    @IBOutlet weak var everestBOLD: UILabel!
    

    /// Checks the font of the label and prints the font details
    ///
    /// - Parameter textFont: The text from the label
    
    func checkLabelFont (_ textFont: (UILabel)) {
        print((textFont.font)!)
        
    }
    /// Checks the font of the text field and prints the font details
    ///
    /// - Parameter textFont: The text from the text field
    func checkTextFieldFont (_ textFont: (UITextField)) {
        print((textFont.font)!)
        
    }
    /// Checks the font of the text view and prints the font details
    ///
    /// - Parameter textFont: The text from the text view
    func checkTextViewFont (_ textFont: (UITextView)) {
        print((textFont.font)!)
        
    }
    /// Prints the font details of the font type
    ///
    /// - Parameter fontType: The font used in sections, menu, buttons
    func checkFontDetails (_ fontType: (UIFont)) {
        print(fontType)
        
    }
    
    func checkTextAttributes(_ label: UILabel){
        print(label.attributedText!)
        
    }
  
    
    
    /// Sets the text attributes for UITextField object
    ///
    /// - Parameters:
    ///   - component: Name of component
    ///   - textField: The text field object
    func setTextAttributes(component: String, textField: UITextField ){
        
        let content = textField.text
        let plist = readPropertyList(component1: component)
        let color1: String = (plist["FontColor"]) as! String
        let fontType = (plist["FontType"]) as! String
        let fontSize = (plist["FontSize"]) as! CGFloat
        let font = UIFont(name: fontType , size: fontSize)
        let colorPlist = readPropertyList(color: color1)
        let red = colorPlist["Red"] as! Float
        let blue = colorPlist["Blue"] as! Float
        let green = colorPlist["Green"] as! Float
        let alpha = colorPlist["Alpha"] as! Float
        let color = UIColor(colorLiteralRed: red  , green: green , blue: blue , alpha: alpha )
        let attributes: [String:Any] = [
            NSFontAttributeName: font as Any,
            NSForegroundColorAttributeName: color]
        let attributedString = NSMutableAttributedString(string: content!, attributes: attributes)
        textField.attributedText = attributedString
        let bgdColor : String = (plist["BackgroundColor"]) as! String
        let bgColorPlist = readPropertyList(color: bgdColor)
        let redBg = bgColorPlist["Red"] as! Float
        let blueBg = bgColorPlist["Blue"] as! Float
        let greenBg = bgColorPlist["Green"] as! Float
        let alphaBg = bgColorPlist["Alpha"] as! Float
        textField.backgroundColor = UIColor(colorLiteralRed: redBg  , green: greenBg , blue: blueBg , alpha: alphaBg )
        
    }

    
    
    /// Sets the text attributes for the UILabel object
    ///
    /// - Parameters:
    ///   - component: <#component description#>
    ///   - label: <#label description#>
    func setTextAttributes(component: String, label: UILabel){
        
        
        let content = label.text
        let plist = readPropertyList(component1: component)
        let color1: String = (plist["FontColor"]) as! String
        let fontType = (plist["FontType"]) as! String
        let fontSize = (plist["FontSize"]) as! CGFloat
        let font = UIFont(name: fontType , size: fontSize)
        let colorPlist = readPropertyList(color: color1)
        let red = colorPlist["Red"] as! Float
        let blue = colorPlist["Blue"] as! Float
        let green = colorPlist["Green"] as! Float
        let alpha = colorPlist["Alpha"] as! Float
        let color = UIColor(colorLiteralRed: red  , green: green , blue: blue , alpha: alpha )
        let attributes: [String:Any] = [
            NSFontAttributeName: font as Any,
            NSForegroundColorAttributeName: color]
        let attributedString = NSMutableAttributedString(string: content!, attributes: attributes)
        label.attributedText = attributedString
        let bgdColor : String = (plist["BackgroundColor"]) as! String
        let bgColorPlist = readPropertyList(color: bgdColor)
        let redBg = bgColorPlist["Red"] as! Float
        let blueBg = bgColorPlist["Blue"] as! Float
        let greenBg = bgColorPlist["Green"] as! Float
        let alphaBg = bgColorPlist["Alpha"] as! Float
        label.backgroundColor = UIColor(colorLiteralRed: redBg  , green: greenBg , blue: blueBg , alpha: alphaBg )
        
        
    }
    /// Sets the text attributes for the UITextView object
    ///
    /// - Parameters:
    ///   - component: <#component description#>
    ///   - textView: <#textView description#>
    func setTextAttributes(component: String, textView: UITextView ){
        let content = textView.text
        let plist = readPropertyList(component1: component)
        let color1: String = (plist["FontColor"]) as! String
        let fontType = (plist["FontType"]) as! String
        let fontSize = (plist["FontSize"]) as! CGFloat
        let font = UIFont(name: fontType , size: fontSize)
        let colorPlist = readPropertyList(color: color1)
        let red = colorPlist["Red"] as! Float
        let blue = colorPlist["Blue"] as! Float
        let green = colorPlist["Green"] as! Float
        let alpha = colorPlist["Alpha"] as! Float
        let color = UIColor(colorLiteralRed: red  , green: green , blue: blue , alpha: alpha )
        let attributes: [String:Any] = [
            NSFontAttributeName: font as Any,
            NSForegroundColorAttributeName: color]
        let attributedString = NSMutableAttributedString(string: content!, attributes: attributes)
        textView.attributedText = attributedString
        let bgdColor : String = (plist["BackgroundColor"]) as! String
        let bgColorPlist = readPropertyList(color: bgdColor)
        let redBg = bgColorPlist["Red"] as! Float
        let blueBg = bgColorPlist["Blue"] as! Float
        let greenBg = bgColorPlist["Green"] as! Float
        let alphaBg = bgColorPlist["Alpha"] as! Float
        textView.backgroundColor = UIColor(colorLiteralRed: redBg  , green: greenBg , blue: blueBg , alpha: alphaBg )
        
    }
    
    /// Sets the text attributes for the UIButton object
    ///
    /// - Parameters:
    ///   - component: <#component description#>
    ///   - button: <#button description#>
    func setTextAttributes(component : String, button: UIButton) {
        let content = button.titleLabel
        let plist = readPropertyList(component1: component)
        let color1: String = (plist["FontColor"]) as! String
        let fontType = (plist["FontType"]) as! String
        let fontSize = (plist["FontSize"]) as! CGFloat
        let font = UIFont(name: fontType , size: fontSize)
        let colorPlist = readPropertyList(color: color1)
        let red = colorPlist["Red"] as! Float
        let blue = colorPlist["Blue"] as! Float
        let green = colorPlist["Green"] as! Float
        let alpha = colorPlist["Alpha"] as! Float
        let color = UIColor(colorLiteralRed: red  , green: green , blue: blue , alpha: alpha )
        let attributes: [String:Any] = [
            NSFontAttributeName: font as Any,
            NSForegroundColorAttributeName: color]
        let attributedString = NSMutableAttributedString(string: (content?.text)!, attributes: attributes)
       button.setAttributedTitle(attributedString, for: .normal)
        let bgdColor : String = (plist["BackgroundColor"]) as! String
        let bgColorPlist = readPropertyList(color: bgdColor)
        let redBg = bgColorPlist["Red"] as! Float
        let blueBg = bgColorPlist["Blue"] as! Float
        let greenBg = bgColorPlist["Green"] as! Float
        let alphaBg = bgColorPlist["Alpha"] as! Float
        button.backgroundColor = UIColor(colorLiteralRed: redBg  , green: greenBg , blue: blueBg , alpha: alphaBg )
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        //        everestCMed.font = setFont(.arial12)
        //        everestBOLD.font = setFont(.arialBold12)
        //        for familynames in UIFont.familyNames{
        //            for fonts in UIFont.fontNames(forFamilyName: familynames) {
        //                print(fonts)
        //
        //            }
        //        }
        
        //        everestCMed.font = setFont(.aIACondMedium16)
        //        checkFontDetails(everestCMed.font)
        
//        setTextAttributes(arial60!, red, button: HelloButton)
        
//        readPropertyList(component: "apptBtn")
        
        
//        checkTextAttributes(everestCMed)
//        checkLabelFont(everestCMed)
//        setTextAttributes(arial12!, red, button: HelloButton)
//        everestCMed.backgroundColor = UIColor.blue
//        setTextAttributes(aIACondMedium26!, red, label: everestCMed)
     //   setTextAttributes(arial10!, red, textView: textview1)
        setTextAttributes(component: "apptBtn", button: HelloButton)
        print(everestCMed.frame.height)
        print(textview1.frame.height)
        print(textfield1.frame.height)
        print(HelloButton.frame.height)
        print(HelloButton.frame) //prints (x,y,width,height) values
        HelloButton.frame = UIView.
//        HelloButton.backgroundColor = UIColor.black
//        textview1.backgroundColor = UIColor.blue
//        textfield1.backgroundColor = UIColor.clear
//        everestCMed.backgroundColor = UIColor.yellow
        
        
    
        //        everestCMed.text = "I'm a test label"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func readPropertyList(color: String)-> NSDictionary{
        var propertyListFormat =  PropertyListSerialization.PropertyListFormat.xml //Format of the Property List.
        var plistData: [String: [String: AnyObject]] = [:] //Our data
        let plistPath: String? = Bundle.main.path(forResource: "Colors", ofType: "plist")! //the path of the data
        let plistXML = FileManager.default.contents(atPath: plistPath!)!
        do {//convert the data to a dictionary and handle errors.
            plistData = try PropertyListSerialization.propertyList(from: plistXML, options: .mutableContainersAndLeaves, format: &propertyListFormat) as! [String: [String:AnyObject]]
            //            print(data1["FontColor"]!)
            
        } catch {
            print("Error reading plist: \(error), format: \(propertyListFormat)")
            
        }
        let colorDict = plistData["\(color)"]!
        return colorDict as NSDictionary
        
    }
    
    func readPropertyList(component1: String)-> NSDictionary{
        var propertyListFormat =  PropertyListSerialization.PropertyListFormat.xml //Format of the Property List.
        var plistData: [String: [String: AnyObject]] = [:] //Our data
        let plistPath: String? = Bundle.main.path(forResource: "Property List1", ofType: "plist")! //the path of the data
        let plistXML = FileManager.default.contents(atPath: plistPath!)!
        do {//convert the data to a dictionary and handle errors.
            plistData = try PropertyListSerialization.propertyList(from: plistXML, options: .mutableContainersAndLeaves, format: &propertyListFormat) as! [String: [String:AnyObject]]
//            print(data1["FontColor"]!)

        } catch {
            print("Error reading plist: \(error), format: \(propertyListFormat)")
            
        }
        let data1 = plistData["\(component1)"]!
        return data1 as NSDictionary
        
    }
    

    
}








