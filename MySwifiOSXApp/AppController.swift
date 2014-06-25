//
//  AppController.swift
//  MySwifiOSXApp
//
//  Created by n37r06u3 on 14-6-11.
//  Copyright (c) 2014年 . All rights reserved.
//

import Cocoa

class AppController: NSObject {
    @IBOutlet var label: NSTextField

    @IBAction func showText(sender : AnyObject){
        println("Button was clicked", sender)
 
        var url = NSURL.URLWithString("http://www.whereismyip.com")
        
        var c:NSString =  String.stringWithContentsOfURL(url)!
        print(c)
        var regex = NSRegularExpression(pattern: "(?:\\d{1,3}\\.){3}\\d{1,3}", options: nil, error: nil)
        
        var match = regex.firstMatchInString(c, options: nil, range: NSRange(location: 0,  length: c.length))
        
        if match
        {
            let ip = c.substringWithRange(match.range)
            print(ip)
            label.stringValue = ip

        }
        
    }
}
