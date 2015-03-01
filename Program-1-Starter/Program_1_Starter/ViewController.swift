//
//  ViewController.swift
//  Swift Color Game for Kids
//
//  Created by Terry Griffin on 2/2/15.
//  Copyright (c) 2015 mwsu. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblChangeColor: UILabel!
    @IBOutlet weak var lblChangeColor2: UILabel!
    
    @IBOutlet weak var lblTotalCorrect: UILabel!
    @IBOutlet weak var lblCorrectIncorrect: UILabel!
    
    @IBOutlet weak var btnAnswer1OUTLET: UIButton!
    @IBOutlet weak var btnAnswer2OUTLET: UIButton!
    @IBOutlet weak var btnAnswer3OUTLET: UIButton!
    
    var buttonAnswer = 0
    var lastButtonAnswer = 0
    
    var colorNumber = 0
    var lastColorNumber = 0
    
    var button1Correct = false
    var button2Correct = false
    var button3Correct = false
    
    var totalCorrect = 0;
    
    var colorNames : [String] = ["Red","Green","Blue","Orange","Black","White","Brown","Purple","Gray","Yellow"]
    
    //Color dictionary type not used in the program but kept as an example for future
    var colorRGB : [Dictionary<String,UInt>] = [
        ["Red":0xFF0000],
        ["Green":0x00FF00],
        ["Blue":0x0000FF],
        ["Orange":0xFF7F00],
        ["Black":0x000000],
        ["White":0xFFFFFF],
        ["Pink":0xFF6EB4],
        ["Purple":0x8968CD],
        ["Gray":0xBEBEBE],
        ["Yellow":0xFFFF00],
        ["Gray2":0xC0C0C0]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        matchColorLogic()
        
        //Read from a file example:
        let read : String? = File.read("Program_1_Starter/colors.json")
        //println(read)
        
        //Write to  a file example:
        let write : Bool = File.write("Program_1_Starter/colors2.json", content: "String to write")
        //println(write)
        
        //Setup the url to get colors from
        let url = "http://cs.mwsu.edu/~griffin/swift/colors.json"
        
        //Run alamo library get request to grab the json data
        request(.GET, url)
            .responseJSON { (req, res, json, error) in
                if(error != nil) {
                    println("Error: \(error)")
                    println(req)
                    println(res)
                }
                else {
                    println("Success: \(url)")
                    var json = JSON(json!)
                    //for (key: String, subJson: JSON) in json {
                    //    println(key)
                    //}
                    
                    //or
                    
                    for (key,val) in json{
                        println(val.string!)
                        println("\(key):\(hexStringToUIColor(val.string!))")
                    }
                }
                
        }
        
        
        //Another way to read the json file
        let json = myJson.getJSON(url)
        var jsonDict = myJson.parseJSON(json)
        println("jsonDict")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAnswer1ACTION(sender: UIButton) {
        if button1Correct == true {
            lblCorrectIncorrect.text = "Correct!"
            totalCorrect++
        }else{
            lblCorrectIncorrect.text = "Incorrect!"
        }
        button1Correct = false
        matchColorLogic()
    }
    
    @IBAction func btnAnswer2ACTION(sender: UIButton) {
        if button2Correct == true {
            lblCorrectIncorrect.text = "Correct!"
            totalCorrect++
        }else{
            lblCorrectIncorrect.text = "Incorrect!"
        }
        button2Correct = false
        matchColorLogic()
    }
    
    @IBAction func btnAnswer3ACTION(sender: UIButton) {
        if button3Correct == true {
            lblCorrectIncorrect.text = "Correct!"
            totalCorrect++
        }else{
            lblCorrectIncorrect.text = "Incorrect!"
        }
        button3Correct = false
        matchColorLogic()
    }
    
    
    @IBAction func btnFireColorAnimation(sender: UIButton) {
        println("fired action")
    }
    
    
    func matchColorLogic() -> Bool{
        
        buttonAnswer = Int(arc4random_uniform(3))
        while buttonAnswer == lastButtonAnswer {
            buttonAnswer = Int(arc4random_uniform(3))
        }
        lastButtonAnswer = buttonAnswer
        
        
        colorNumber = Int(arc4random_uniform(10))
        while colorNumber == lastButtonAnswer {
            colorNumber = Int(arc4random_uniform(10))
        }
        lastColorNumber = colorNumber
        
        changeColor()
        
        var color = colorNumber
        var prev = ((colorNumber - 1) + colorNames.count) % colorNames.count
        var next = (colorNumber + 1) % colorNames.count
        
        if(buttonAnswer == 0){
            btnAnswer1OUTLET.setTitle(colorNames[color], forState: UIControlState.Normal)
            btnAnswer2OUTLET.setTitle(colorNames[prev], forState: UIControlState.Normal)
            btnAnswer3OUTLET.setTitle(colorNames[next], forState: UIControlState.Normal)
            button1Correct = true;
            
        }
        
        if(buttonAnswer == 1){
            btnAnswer1OUTLET.setTitle(colorNames[prev], forState: UIControlState.Normal)
            btnAnswer2OUTLET.setTitle(colorNames[color], forState: UIControlState.Normal)
            btnAnswer3OUTLET.setTitle(colorNames[next], forState: UIControlState.Normal)
            button2Correct = true
        }
        
        if(buttonAnswer == 2){
            btnAnswer1OUTLET.setTitle(colorNames[next], forState: UIControlState.Normal)
            btnAnswer2OUTLET.setTitle(colorNames[prev], forState: UIControlState.Normal)
            btnAnswer3OUTLET.setTitle(colorNames[color], forState: UIControlState.Normal)
            button3Correct = true
        }
        
        return true;
    }
    
    
    func changeColor() -> Bool{
        
        println(UIColor.brownColor())
        
        if(colorNumber == 0){
            //lblChangeColor.backgroundColor = UIColor.redColor()
            lblChangeColor.backgroundColor = UIColorFromRGB(0xFF0000)
        }
        if(colorNumber == 1){
            lblChangeColor.backgroundColor = UIColor.greenColor()
        }
        if(colorNumber == 2){
            lblChangeColor.backgroundColor = UIColor.blueColor()
        }
        if(colorNumber == 3){
            lblChangeColor.backgroundColor = UIColor.orangeColor()
        }
        if(colorNumber == 4){
            lblChangeColor.backgroundColor = UIColor.blackColor()
        }
        if(colorNumber == 5){
            lblChangeColor.backgroundColor = UIColor.whiteColor()
        }
        if(colorNumber == 6){
            lblChangeColor.backgroundColor = UIColor.brownColor()
        }
        if(colorNumber == 7){
            lblChangeColor.backgroundColor = UIColor.purpleColor()
        }
        if(colorNumber == 8){
            lblChangeColor.backgroundColor = UIColor.grayColor()
        }
        if(colorNumber == 9){
            lblChangeColor.backgroundColor = UIColor.yellowColor()
        }
        
        lblTotalCorrect.text = "Total Correct: \(totalCorrect)"
        
        return true
    }
    
    //Not used in the program but kept as an example for future
    //This function receives a hexidecimal color in the format 0xFFFFFF
    //and returns a UIColor RGB value
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
}

/********************************************************************************************
* File read and write helper class
* Methods:
*   exists(string) returns Bool
*   read(string,encoding) returns String
*   write(string,string,encoding,error) returns Bool
********************************************************************************************/
class File {
    
    class func exists (path: String) -> Bool {
        return NSFileManager().fileExistsAtPath(path)
    }
    
    class func read (path: String, encoding: NSStringEncoding = NSUTF8StringEncoding) -> String? {
        if File.exists(path) {
            return String(contentsOfFile: path, encoding: encoding, error: nil)
        }
        
        return nil
    }
    
    class func write (path: String, content: String, encoding: NSStringEncoding = NSUTF8StringEncoding) -> Bool {
        return content.writeToFile(path, atomically: true, encoding: encoding, error: nil)
    }
}

/********************************************************************************************
* Json Helper Class
* Methods:
*   getJSON(string) returns NSData
*   parseJSON(NSData) returns Dictionary
********************************************************************************************/
class myJson {
    
    class func getJSON(urlToRequest: String) -> NSData{
        return NSData(contentsOfURL: NSURL(string: urlToRequest)!)!
    }
    
    class func parseJSON(inputData: NSData) -> NSDictionary{
        var error: NSError?
        var boardsDictionary: NSDictionary = NSJSONSerialization.JSONObjectWithData(inputData, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary
        return boardsDictionary
    }
}

/********************************************************************************************
* Color helper class
* Methods:
*   getJSON(string) returns NSData
*   parseJSON(NSData) returns Dictionary
********************************************************************************************/
func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet() as NSCharacterSet).uppercaseString
    
    if (cString.hasPrefix("#")) {
        cString = cString.substringFromIndex(advance(cString.startIndex, 1))
    }
    
    if (countElements(cString) != 6) {
        return UIColor.grayColor()
    }
    
    var rgbValue:UInt32 = 0
    NSScanner(string: cString).scanHexInt(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}





