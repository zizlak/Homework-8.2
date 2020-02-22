//
//  ViewController.swift
//  08
//
//  Created by Aleksandr Kurdiukov on 21.04.19.
//  Copyright © 2019 Zizlak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageUIImageView: UIImageView!
    
    let nuts = [UIImage(named: "nuts01"),UIImage(named: "nuts02"), UIImage(named: "nuts03"), UIImage(named: "nuts04"), UIImage(named: "nuts05"), UIImage(named: "nuts06"), UIImage(named: "nuts07"), UIImage(named: "nuts08"), UIImage(named: "nuts09"), UIImage(named: "nuts10")]
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageUIImageView.image = nuts[0]
    }
    
    @IBAction func next(_ sender: Any) {
        currentIndex += 1
        imageUIImageView.image = nuts[currentIndex % nuts.count]
    }
    
    @IBAction func `return`(_ sender: Any) {
        if currentIndex > 0 { currentIndex -= 1}
        else { currentIndex = nuts.count}
        imageUIImageView.image = nuts[currentIndex % nuts.count]
}
}
