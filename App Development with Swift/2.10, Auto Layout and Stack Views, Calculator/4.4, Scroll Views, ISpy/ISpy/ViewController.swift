//
//  ViewController.swift
//  ISpy
//
//  Created by Sola on 2020/1/31.
//  Copyright © 2020 Sola. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    // (Scroll View, Outlet, scrollView)
    @IBOutlet var scrollView: UIScrollView!
    
    // (Image View, Outlet, imageView)
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // ?
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / imageView.bounds.width
        let heightScale = size.height / imageView.bounds.height
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
    }
}

