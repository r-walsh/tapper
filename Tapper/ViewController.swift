//
//  ViewController.swift
//  Tapper
//
//  Created by Ryan Walsh on 5/11/16.
//  Copyright © 2016 Ryan Walsh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Initial State
    var numberOfTaps = 0
    var tapGoal = 1

    // Initally shown
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    // Initially hidden
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    
    func resetState() -> Void {
        tapBtn.hidden = true
        tapsLbl.hidden = true
        
        logoImg.hidden = false
        howManyTapsTxt.text? = ""
        howManyTapsTxt.hidden = false
        playBtn.hidden = false
        
        numberOfTaps = 0
        tapGoal = 1
    }
    
    // MARK actions
    
    @IBAction func onPlayBtnPressed( sender: UIButton! ) -> Void {
        logoImg.hidden = true
        howManyTapsTxt.hidden = true
        playBtn.hidden = true
        
        tapGoal = Int(howManyTapsTxt.text!)!
        tapBtn.hidden = false
        tapsLbl.text = "\( numberOfTaps )"
        tapsLbl.hidden = false
    }
    
    @IBAction func onTapBtnTap( sender: UIButton! ) -> Void {
        numberOfTaps += 1
        tapsLbl.text = "\( numberOfTaps )"
        
        if numberOfTaps >= tapGoal {
            resetState()
        }
    }
    
}

