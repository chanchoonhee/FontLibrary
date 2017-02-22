//
//  ViewController.swift
//  Fonts
//
//  Created by Chan Choon Hee on 02/02/2017.
//  Copyright © 2017 Chan Choon Hee. All rights reserved.
//

import UIKit


let screenSize = UIScreen.main.bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height


class ViewController: UIViewController/*, UITableViewDelegate, UITableViewDataSource*/{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBAction func ColorMe(_ sender: Any) {
        
        print("HelloWorld")
    }
    @IBOutlet weak var textview1: UITextView!
    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var HelloButton: UIButton!
    @IBOutlet weak var everestCMed: UILabel!
    @IBOutlet weak var everestBOLD: UILabel!
    
    
//    let textCellIdentifier = "LabelCell"
//    
//    let swiftBlogs = ["Ray Wenderlich", "NSHipster", "iOS Developer Tips", "Jameson Quave", "Natasha The Robot", "Coding Explorer", "That Thing In Swift", "Andrew Bancroft", "iAchieved.it", "Airspeed Velocity"]
//    // MARK:  UITextFieldDelegate Methods
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return swiftBlogs.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath as IndexPath )
//        
//        let row = indexPath.row
//        cell.textLabel?.text = swiftBlogs[row]
//        setTextAttributes(component: "apptBtn", label: (cell.textLabel)!, isSelected: false)
//        cell.textLabel?.backgroundColor = getUIColor(colorName: "P2")
//        
//        return cell
//    }
//    
//    // MARK:  UITableViewDelegate Methods
//    func tableView( tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
//        
//        let row = indexPath.row
//        print(swiftBlogs[row])
//    }
//    
    
//    /// Prints the attributes of the text.
//    ///
//    /// - Parameter label: <#label description#>
//    func checkTextAttributes(_ label: UILabel){
//        print(label.attributedText!)
//        
//    }
    
    /// Sets the text attributes for UITextField object e.g. font color, font size, and font type.
    ///
    /// - Parameters:
    ///   - component: Name of component
    ///   - textField: The text field object
    ///   - isSelected: the state of the text field
    func setTextAttributes(component: String, textField: UITextField, isSelected : Bool?){
        
        let content = textField.text
        let plist = readPropertyList(component1: component)
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
    func setTextAttributes(component: String, label: UILabel, isSelected : Bool?){
        
        
        let content = label.text
        let plist = readPropertyList(component1: component)
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
    func setTextAttributes(component: String, textView: UITextView, isSelected : Bool? ){
        let content = textView.text
        let plist = readPropertyList(component1: component)
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
    func setTextAttributes(component : String, button: UIButton, isSelected : Bool?)  {
        let content = button.titleLabel
        let plist =  readPropertyList(component1: component)
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
    func getComponentSize(component: String) -> (width: CGFloat, height: CGFloat) {
        let sizePlist = readPropertyList(componentSize: component)
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
    func getUIColor(colorName : String)-> UIColor {
        let colorPlist =  readPropertyList(color: colorName)
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
    func printAttributes(component: String){
        let plist =  readPropertyList(component1: component)
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
   
 func getUIFont(component : String, isSelected) -> UIFont  {
       
        let plist =  readPropertyList(component1: component)
        var fontType : String = "ArialMT"
        var fontSize : CGFloat = 12
        if isSelected! {
            if let haveFontSelected = (plist["FontTypeSelected"]){
                fontType = haveFontSelected as! String
                fontSize = (plist["FontSize"]) as! CGFloat
            }
        }else{
            fontType = (plist["FontType"]) as! String
            fontSize = (plist["FontSize"]) as! CGFloat
        }
        let font = UIFont(name: fontType , size: fontSize)
        return font
    }
    
    /// Retrieves the UIColor object based on the values from the plist
    ///
    /// - Parameter component: The component name
    /// - isSelected: the state of the UIView object
    /// - Returns: UIColor object loaded with the RGBA Values
func getTextColor(component : String, isSelected : Bool?) -> UIColor  {
     let plist =  readPropertyList(component1: component)
        var fColor : String = "Black"
        if isSelected! {
            fColor = (plist["FontColorSelected"]) as! String
            
            }
            else{
            fColor = (plist["FontColor"]) as! String
        }
        let color = getUIColor(colorName: fColor)
        
    }
    /// Retrieves the UIColor object based on the values from the plist
    ///
    /// - Parameter component: The component name
    /// - isSelected: the state of the UIView object
    /// - Returns: UIColor object loaded with the RGBA Values
    func getBackgroundColor(component : String, isSelected : Bool?){
        if isSelected! {
            if let bgdColor : String = (plist["BackgroundColorSelected"]) as? String{
                let bkdcolor = getUIColor(colorName: bgdColor)
                button.backgroundColor = bkdcolor
        }
        else{
                if let bgdColor : String = (plist["BackgroundColor"]) as? String{
                    let bkdcolor = getUIColor(colorName: bgdColor)
                    button.backgroundColor = bkdcolor
            }
            }
        
        }

    }

    //    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    //        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as CustomTableViewCell
    //        l
    //
    //    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTextAttributes(component: components.addApptBtn.rawValue, button: HelloButton, isSelected: false)
        setTextAttributes(component: components.apprText.rawValue, textField:textfield1 , isSelected: false)
        print(HelloButton.frame) //prints (x,y,width,height) values
        HelloButton.frame = CGRect(x: 100, y: 100, width: 100, height: 30)
        getComponentSize(component: sizes.apprBox.rawValue )
        printAttributes(component: "apptText")
//        tableView.delegate = self
//        tableView.dataSource = self
        
        //        setTextAttributes(component: "apptText", label:tbView , isSelected: false)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// Reads the property list for the component size
    ///
    /// - Parameter componentSize: The component whose values are to be returned in percentage
    /// - Returns: The component size in percentage as a dictionary
    func readPropertyList(componentSize: String)-> NSDictionary{
        var propertyListFormat =  PropertyListSerialization.PropertyListFormat.xml //Format of the Property List.
        var plistData: [String: [String: AnyObject]] = [:] //Our data
        let plistPath: String? = Bundle.main.path(forResource: "Size", ofType: "plist")! //the path of the data
        let plistXML = FileManager.default.contents(atPath: plistPath!)!
        do {//convert the data to a dictionary and handle errors.
            plistData = try PropertyListSerialization.propertyList(from: plistXML, options: .mutableContainersAndLeaves, format: &propertyListFormat) as! [String: [String:AnyObject]]
            //            print(data1["FontColor"]!)
            
        } catch {
            print("Error reading plist: \(error), format: \(propertyListFormat)")
            
        }
        let sizeDict = plistData["\(componentSize)"]!
        return sizeDict as NSDictionary
        
    }
    
    
    
    
    
    
    /// Reads the color property list
    ///
    /// - Parameter color: The color name
    /// - Returns: The color RGBA values in a dictionary
    func readPropertyList(color: String)  -> NSDictionary{
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
    
    /// Reads the property list for the components
    ///
    /// - Parameter component1: The component whose values are to be returned
    /// - Returns: Values such as font type, size and font color in a dictionary
    func readPropertyList(component1: String)-> NSDictionary{
        var propertyListFormat =  PropertyListSerialization.PropertyListFormat.xml //Format of the Property List.
        var plistData: [String: [String: AnyObject]] = [:] //Our data
        let plistPath: String? = Bundle.main.path(forResource: "Components", ofType: "plist")! //the path of the data
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












