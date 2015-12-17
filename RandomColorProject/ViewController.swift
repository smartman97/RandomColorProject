//
//  ViewController.swift
//  RandomColorProject
//
//  Created by Laro, Colm on 12/17/15.
//  Copyright © 2015 Laro, Colm. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var newRed :CGFloat = 0
    var newGreen :CGFloat = 0
    var newBlue :CGFloat = 0
    
    @IBAction func redButton(sender: UIButton)
    {
        view.backgroundColor = UIColor.redColor()
    }
    
    @IBAction func greenButton(sender: UIButton)
    {
        view.backgroundColor = UIColor.greenColor()
    }
    
    @IBAction func blueButton(sender: UIButton)
    {
        view.backgroundColor = UIColor.blueColor()
    }
    
    @IBAction func randomButton(sender: UIButton)
    {
        randomColorChange()
    }
    
    func randomColorChange()
    {
        newRed = CGFloat(Double(arc4random_uniform(256)) / 255.000)
        newGreen = CGFloat(Double(arc4random_uniform(256)) / 255.000)
        newBlue = CGFloat(Double(arc4random_uniform(256)) / 255.000)
        
        view.backgroundColor = UIColor(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }

    @IBAction func redSlider(sender: UISlider)
    {
        newRed = CGFloat(Double(sender.value))
        changeColor()
    }
    
    @IBAction func greenSlider(sender: UISlider)
    {
        newGreen = CGFloat(Double(sender.value))
        changeColor()
    }
    
    @IBAction func blueSlider(sender: UISlider)
    {
        newBlue = CGFloat(Double(sender.value))
        changeColor()
    }
    
    func changeColor()
    {
        view.backgroundColor = UIColor(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}