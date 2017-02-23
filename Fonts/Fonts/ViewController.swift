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

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Style.setTextAttributes(component: components.addApptBtn.rawValue, button: HelloButton, isSelected: false)
        Style.setTextAttributes(component: components.apprText.rawValue, textField:textfield1 , isSelected: false)
        print(HelloButton.frame) //prints (x,y,width,height) values
        HelloButton.frame = CGRect(x: 100, y: 100, width: 100, height: 30)
        Style.getComponentSize(component: sizes.apprBox.rawValue )
        Style.printAttributes(component: "apptText")
        everestCMed.backgroundColor = Style.getBackgroundColor(component: components.apprBtn.rawValue, isSelected: false)
        everestCMed.font = Style.getUIFont(component: components.apprCont.rawValue, isSelected: false)
        //        tableView.delegate = self
        //        tableView.dataSource = self
        
        //        setTextAttributes(component: "apptText", label:tbView , isSelected: false)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
    


    
}












