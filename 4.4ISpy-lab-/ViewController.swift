//
//  ViewController.swift
//  4.4ISpy-lab-
//
//  Created by Sophie Kim on 2020/09/08.
//  Copyright © 2020 Sophie Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        scrollView.delegate = self
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / imageView.bounds.width
        let heightSCale = size.height / imageView.bounds.height
        let scale = min(widthScale, heightSCale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
    }
}

