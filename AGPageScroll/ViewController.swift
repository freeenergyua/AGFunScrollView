//
//  ViewController.swift
//  AGPageScroll
//
//  Created by User on 27.10.16.
//  Copyright © 2016 AG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var images = [UIImageView]()

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named:"icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = (scrollWidth / 2)  + scrollWidth * CGFloat(x)
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75 , y: (scrollView.frame.height / 2) - 75 , width: 150, height: 150)
        }
        contentWidth = scrollWidth * 1.5 * CGFloat(images.count)
        
        print("Count \(images.count)")
        print("View width \(view.frame.size.width)")
        print("ScrollView width \(scrollWidth)")
        print("contentWidth \(contentWidth)")
        
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

