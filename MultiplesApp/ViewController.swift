//
//  ViewController.swift
//  MultiplesApp
//
//  Created by Tayseer Edouni on 4/26/16.
//  Copyright © 2016 Tayseer Edouni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Initialize values
    var sum = 0
    var multiple = 0
    let counterMultiple = 5
    var counter = 0
    
    @IBOutlet weak var titleImage: UIImageView!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var multipleTextFieldValue: UITextField!
    
    
    @IBAction func multipleTextField(sender: AnyObject) {
        
        
        guard var _ = Int(multipleTextFieldValue.text!)else{
            //doesn't pass
            multiple = 0
            
            return
        }
        //passes
        multiple = Int(multipleTextFieldValue.text!)!
   

    }
    
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBAction func playButtonPressed(sender: AnyObject) {
   
        multiple = Int(multipleTextFieldValue.text!)!
        titleImage.hidden = true
        playButton.hidden = true
        multipleTextFieldValue.hidden = true
        
        outputLabel.text = "\(sum) + \(multiple) = \(sum+multiple)"
        sum = sum + multiple
        counter += 1
        outputLabel.hidden = false
        addButton.hidden = false
        

    }
    
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBAction func addButtonPressed(sender: AnyObject) {
        
        if (counter > counterMultiple) {
            sum = 0
            counter = 0
            outputLabel.hidden = true
            addButton.hidden = true
            titleImage.hidden = false
            playButton.hidden = false
            multipleTextFieldValue.hidden = false
            
        }else{
            outputLabel.text = "\(sum) + \(multiple) = \(sum+multiple)"
            sum = sum + multiple
            print(sum)
            counter += 1
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.hidden = true
        addButton.hidden = true
        
        
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    func dismissKeyboard(){
        view.endEditing(true)
    }
}

