//
//  CutomAnnotationView.swift
//  WebViewDemo
//
//  Created by agilemac-24 on 12/13/17.
//

import UIKit
import MapKit

class CutomAnnotationView: MKAnnotationView
{

    override var annotation: MKAnnotation?
        {
        willSet {
            guard let artwork = newValue as? MapAnnotation else {return}
            
            canShowCallout = true
            calloutOffset = CGPoint(x: -5, y: 5)
            let mapsButton = UIButton(frame: CGRect(origin: CGPoint.zero,
                                                    size: CGSize(width: 30, height: 30)))
            mapsButton.setBackgroundImage(UIImage(named: "Maps-icon"), for: UIControlState())
            rightCalloutAccessoryView = mapsButton
            //      rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            
            
            let detailLabel = UILabel()
            detailLabel.numberOfLines = 0
            detailLabel.font = detailLabel.font.withSize(12)
            detailLabel.text = "Test"
            detailCalloutAccessoryView = detailLabel
        }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
