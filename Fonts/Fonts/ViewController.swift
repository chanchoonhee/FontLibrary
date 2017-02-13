//
//  ViewController.swift
//  Fonts
//
//  Created by Chan Choon Hee on 02/02/2017.
//  Copyright © 2017 Chan Choon Hee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func ColorMe(_ sender: Any) {
        print("HelloWorld")
    }
    @IBOutlet weak var textview1: UITextView!
    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var HelloButton: UIButton!
    //    enum fonts{
    
    //        case aIACondMedium16
    //        case aIACondMedium26
    //        case aIACondMedium20
    //        case arial9
    //        case arial10
    //        case arial12
    //        case arial13
    //        case arial14
    //        case arial60
    //        case arialBold12
    //        case arialBold16
    //    }
    
    
    
    @IBOutlet weak var everestCMed: UILabel!
    @IBOutlet weak var everestBOLD: UILabel!
    
    
    
    //    /// Sets the font type for the text
    //    ///
    //    /// - Parameters:
    //    ///   - fontName: The name of the font based on the enum values
    //    ///   - fontSize: Size of the font to be displayed
    //    /// - Returns: The font object
    //    func setFont(_ fontName: fonts) -> UIFont {
    //
    //        switch fontName{
    //
    //        case .aIACondMedium16:
    //                let font = UIFont(name: "AIAEverestCondensedMedium", size: 16)
    //                return (font)!
    //
    //        case .aIACondMedium20:
    //            let font = UIFont(name: "AIAEverestCondensedMedium", size: 20)
    //            return (font)!
    //
    //        case .aIACondMedium26:
    //            let font = UIFont(name: "AIAEverestCondensedMedium", size: 26)
    //            return (font)!
    //
    //        case .arial9:
    //            let font = UIFont(name: "ArialMT", size: 9)
    //            return (font)!
    //
    //        case .arial10:
    //            let font = UIFont(name: "ArialMT", size: 10)
    //            return (font)!
    //
    //        case .arial12:
    //            let font = UIFont(name: "ArialMT", size: 12)
    //        return (font)!
    //
    //        case .arial13:
    //            let font = UIFont(name: "ArialMT", size: 13)
    //            return (font)!
    //
    //        case .arial14:
    //            let font = UIFont(name: "ArialMT", size: 14)
    //            return (font)!
    //
    //        case .arial60:
    //            let font = UIFont(name: "ArialMT", size: 60)
    //            return (font)!
    //
    //        case .arialBold12:
    //            let font = UIFont(name: "Arial-BoldMT", size: 12)
    //            return (font)!
    //
    //        case .arialBold16:
    //            let font = UIFont(name: "Arial-BoldMT", size: 16)
    //            return (font)!
    //        }
    //
    //    }
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
    var red = UIColor(colorLiteralRed: 100, green: 0, blue: 0, alpha: 1.0)
    
    
    func setTextAttributes(_ font: UIFont, _ color: UIColor, textField: UITextField ){
        
        let content = textField.text
        let attributes: [String:Any] = [
            NSFontAttributeName: font,
            NSForegroundColorAttributeName: color]
        let attributedString = NSMutableAttributedString(string: content!, attributes: attributes)
        textField.attributedText = attributedString
        
    }
    
    func setTextAttributes(_ font: UIFont, _ color: UIColor, label: UILabel){
        
        
        let content = label.text
        let attributes: [String:Any] = [
            NSFontAttributeName: font,
            NSForegroundColorAttributeName: color]
        let attributedString = NSMutableAttributedString(string: content!, attributes: attributes)
        label.attributedText = attributedString
        
        
    }
    func setTextAttributes(_ font: UIFont, _ color: UIColor, textView: UITextView ){
        let content = textView.text
        let attributes: [String:Any] = [
            NSFontAttributeName: font,
            NSForegroundColorAttributeName: color]
        let attributedString = NSMutableAttributedString(string: content!, attributes: attributes)
        textView.attributedText = attributedString
        
    }
    func setTextAttributes(_ font: UIFont, _ color: UIColor, button: UIButton) {
        let content = button.titleLabel
        let attributes: [String:Any] = [
            NSFontAttributeName: font,
            NSForegroundColorAttributeName: color]
        let attributedString = NSMutableAttributedString(string: (content?.text)!, attributes: attributes)
       button.setAttributedTitle(attributedString, for: .normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        //print(UIFont.familyNames)
        
        
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
        
        
        
        checkTextAttributes(everestCMed)
        checkLabelFont(everestCMed)
        setTextAttributes(arial12!, red, button: HelloButton)
        
        //        everestCMed.text = "I'm a test label"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
}








