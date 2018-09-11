//
//  ViewController.swift
//  What's For Dinner
//
//  Created by Gaven Giampalmi on 9/6/18.
//  Copyright © 2018 Gaven Giampalmi. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var index = -1
    var imageIndex = -1
    let numberOfImages = 7
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func optionButton(_ sender: UIButton) {
        
        let dinnerOptions = [
            "Chicken Terryaki",
            "Pizza",
            "Buffalo Wings",
            "Pasta",
            "Sushi",
            "Steak",
            "Salad"]
        
        var newIndex: Int
        
        repeat {
            newIndex = Int.random(in: 0..<dinnerOptions.count)}
        while index == newIndex
        
        index = newIndex
        messageLabel.text = dinnerOptions[index]
        
//        repeat {
//            newIndex = Int.random(in: 0..<dinnerOptions.count)}
//        while index == newIndex
//
//        imageIndex = newIndex
        
        imageView.image = UIImage(named: "image\(newIndex + 1)")
        
        
    }
    
}

