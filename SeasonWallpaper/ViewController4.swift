//
//  ViewController4.swift
//  SeasonWallpaper
//
//  Created by ATTA SK on 21/08/2022.
//

import UIKit

class ViewController4: UIViewController {
    
    @IBOutlet weak var homeBtn: UIButton!
    @IBOutlet weak var backBtn2: UIButton!
    @IBOutlet weak var Wnm: UILabel!
    @IBOutlet weak var Wimg: UIImageView!
    
    var wImg : String?
    var wNam : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print("4th View Controller",wNam)
        
        if let img = wImg {
            Wimg.image = UIImage(named: img)
        }else {navigationController?.popViewController(animated: true)
            print("Please try again.....")
        }
        Wnm.text = wNam
        
    }
    

    @IBAction func backBtn2(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func homeBtn(_ sender: Any) {
       
        for controller in self.navigationController!.viewControllers as Array {
                     if controller.isKind(of: ViewController2.self) {
                         self.navigationController!.popToViewController(controller, animated: true)
                         break
                     }
                 }
    }
    
    
    
    
    
    // share image
    @IBAction func shareImageButton(_ sender: UIButton) {

        // image to share
        let image = wImg
//        let image = UIImage(named: "Summer3")

        // set up activity view controller
        let imageToShare = [ image! ]
        let activityViewController = UIActivityViewController(activityItems: imageToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash

        // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]

        // present the view controller
        self.present(activityViewController, animated: true, completion: nil)
    }
    
    
    // share text
    @IBAction func shareTextButton(_ sender: UIButton) {

        // text to share
        let text = "This is some text that I want to share."

        // set up activity view controller
        let textToShare = [ text ]
        let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash

        // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]

        // present the view controller
        self.present(activityViewController, animated: true, completion: nil)

    }

  

}
    
    

