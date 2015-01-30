//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by Phyllis Hollingshead on 10/10/14.
//  Copyright (c) 2014 Phyllis Hollingshead. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtShoeSize: UITextField!
    
    @IBOutlet weak var lblConvertedSize: UILabel!
    
    @IBOutlet weak var txtWomenSize: UITextField!
    
    @IBOutlet weak var lblWomenConvertedSize: UILabel!

    @IBOutlet weak var lblConvertedSizeText: UILabel!
    
    @IBOutlet weak var lblWomensConvertedSizeText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnConvert(sender: UIButton) {
        
        let conversionConstant = 30
        
//        let strShoeSize = txtShoeSize.text  //read in shoe size from text box
//        let intShoeSize = strShoeSize.toInt()  //convert text read in to integer
//        var shoeSize = intShoeSize! //unwrap the integer and store in variable
//    all three of these lines can be done in one line of code
        
        let shoeSize = txtShoeSize.text.toInt()!
        
        
//        shoeSize += conversionConstant  //update size
//        let strNewShoeSize = "\(shoeSize)"   //change new shoe size to a string
//        lblConvertedSize.text = strNewShoeSize   //update label with new size
//    these three lines can also be done in one line of code
        
        lblConvertedSize.text = "\(shoeSize + conversionConstant)"
        lblConvertedSize.hidden = false  //unhide label with new shoe size
        lblConvertedSizeText.hidden = false //unhide text under converted label
        
    }
    
    
    @IBAction func btnWomenConvet(sender: UIButton) {
        
        let conversionConstant = 30.5
        let shoeSize = Double((txtWomenSize.text as NSString).doubleValue)
        lblWomenConvertedSize.text = "\(shoeSize + conversionConstant)"
        lblWomenConvertedSize.hidden = false
        lblWomensConvertedSizeText.hidden = false
    }
    
    

}

