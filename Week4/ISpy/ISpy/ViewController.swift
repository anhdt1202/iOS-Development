//
//  ViewController.swift
//  ISpy
//
//  Created by AnhDT on 11/23/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollImageView: UIScrollView!
    
    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollImageView.delegate = self
        updateZoomFor(size: view.bounds.size)
        // Do any additional setup after loading the view.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imgView
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / imgView.bounds.width
        let heightScale = size.height / imgView.bounds.height
        let scale = min(widthScale, heightScale)
        scrollImageView.minimumZoomScale = scale
    }
}

