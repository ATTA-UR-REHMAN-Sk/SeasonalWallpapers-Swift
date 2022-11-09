//
//  ViewController.swift
//  SeasonWallpaper
//
//  Created by ATTA SK on 18/08/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var atvIndicator: UIActivityIndicatorView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        atvIndicator.startAnimating()
        
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) {
            (t) in
            print("done")
            
            self.atvIndicator.stopAnimating()
            
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController2") as? ViewController2
            self.navigationController?.pushViewController(vc!, animated: true)
            
        }
      
        
    }

    

}

//fileprivate var inDicator : UIView?
//
//extension UIViewController {
//
//    func showSpiner() {
//        inDicator = UIView (frame: self.view.bounds)
//        inDicator?.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
//        let ai = UIActivityIndicatorView(style: .large)
//        ai.center = inDicator!.center
//        ai.startAnimating()
//        inDicator?.addSubview(ai)
//        self.view.addSubview(inDicator!)
//
//    }
//    func removeIndicator() {
//        inDicator?.removeFromSuperview()
//        inDicator = nil
//
//    }
//
// }
