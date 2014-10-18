//
//  ViewController.swift
//  GreetingApp
//
//  Created by Vinny Carpenter on 10/18/14.
//  Copyright (c) 2014 Vinny Carpenter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func pressMeButtonPressed(sender: AnyObject) {
        
        
        var calendar = NSCalendar.currentCalendar()
        var timeDateComponents = calendar.components(
            NSCalendarUnit.HourCalendarUnit |
                NSCalendarUnit.MinuteCalendarUnit |
                NSCalendarUnit.SecondCalendarUnit, fromDate: NSDate())
        
        var hour = timeDateComponents.hour
        
        var name = "Vinny"
        
        if hour >= 8 && hour < 12 {
            greetingLabel.text = "Good morning \(name)"
        } else if hour >= 12 && hour < 18 {
            greetingLabel.text = "Good afternoon \(name)"
        } else if hour >= 18 && hour < 22 {
            greetingLabel.text = "Good evening \(name)"
        } else {
            greetingLabel.text = "Good night \(name)"
        }
    }
}

