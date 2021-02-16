//
//  CustomNavigationController.swift
//  NavigationController
//
//  Created by 이주향 on 2021/02/16.
//

import UIKit

class CustomNavigationController: UINavigationController {
    var status = false
    var mapView : MapViewController? = nil
    
    override func viewDidLoad() {
        if (status) {
            self.performSegue(withIdentifier: "first", sender: self)
        } else {
            self.performSegue(withIdentifier: "second", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.mapView = segue.destination as! MapViewController
        
        print (self.mapView)
    }
}
