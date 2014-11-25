//
//  ViewController.swift
//  SaveAndLoad
//
//  Created by Ranjith Nagella on 11/24/14.
//  Copyright (c) 2014 Ranjith Nagella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Document Directory /User/rnagella/.../Documnets
    // Users/rknage/Library/Developer/CoreSimulator/Devices/0BD56009-288C-4E32-8F39-820ABE512DF6/data/Containers/Data/Application/0DDC3504-78C2-4EAC-AEE0-7413CA1B9238/Documents
    // File in Document Directory /User/rnagella/../.Documents/Photo.png
    
    func documentsDirectory() -> String{
        let documentFolderPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)[0] as String
        
        return documentFolderPath
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let documents = documentsDirectory()
        println("Documents:\(documents)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

