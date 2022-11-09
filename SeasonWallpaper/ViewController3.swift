//
//  ViewController3.swift
//  SeasonWallpaper
//
//  Created by ATTA SK on 19/08/2022.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var CollView: UICollectionView!
    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var titleLbl: UILabel!
    
   var titlelbl : String?
    
    var imgs : [String]?
    var lblarr : [String]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLbl.text = titlelbl!
        
    }
    
    @IBAction func backBtn(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
}



extension ViewController3 : UICollectionViewDelegate,UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lblarr!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
            //cell.Sname.text! = Swp[indexPath.row]
//        cell.Image1.image = UIImage(named: "Summer\(indexPath.row)")
        cell.Image1.image = UIImage(named: (imgs?[indexPath.row])!)
        cell.Lbl1.text = lblarr?[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You have clicked on  \(String(describing: lblarr?[indexPath.row])) Season")
        
        let sImage = imgs?[indexPath.row]

        let imgName = lblarr?[indexPath.row]
        
    let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController4") as? ViewController4
    vc?.wImg = sImage
    vc?.wNam = imgName
    self.navigationController?.pushViewController(vc!, animated: true)
    }
}
