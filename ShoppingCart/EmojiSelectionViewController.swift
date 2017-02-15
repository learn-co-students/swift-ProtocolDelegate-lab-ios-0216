//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var leftTextBox: UITextField!
    
    @IBOutlet weak var rightTextBox: UITextField!
    
    var emojiDelegate: EmojiCreation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    @IBAction func saveButtontapped(_ sender: UIButton) {
     
        guard let leftEmoji = leftTextBox.text else{ return}
        guard let rightEmoji = rightTextBox.text else{ return}
        
        let tups = (leftEmoji, rightEmoji)
       
        emojiDelegate?.create(emojiGroup: tups)
        
        dismiss(animated: true, completion: nil)
    }
}
