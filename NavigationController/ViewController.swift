//
//  ViewController.swift
//  NavigationController
//
//  Created by 이주향 on 2021/02/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    var navvigationController : CustomNavigationController? = nil
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        print (navvigationController)
        print (navvigationController?.mapView)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print (segue.destination)
        self.navvigationController = segue.destination as? CustomNavigationController
    }
    
}

