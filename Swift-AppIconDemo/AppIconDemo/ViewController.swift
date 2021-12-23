//
//  ViewController.swift
//  AppIconDemo
//
//  Created by HTC on 2021/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var icons: [UIImageView]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        icons.forEach { imageView in
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
            imageView.addGestureRecognizer(tapGestureRecognizer)
        }
        
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        switch tappedImage.tag {
        case 1:
            UIApplication.shared.setAlternateIconName(nil)
        case 2:
            UIApplication.shared.setAlternateIconName("37")
        case 3:
            UIApplication.shared.setAlternateIconName("Rainbow")
        case 4:
            UIApplication.shared.setAlternateIconName("Apple")
        case 5:
            UIApplication.shared.setAlternateIconName("Oversea")
        case 6:
            UIApplication.shared.setAlternateIconName("Demo")
        default:
            break
        }
    }
}

