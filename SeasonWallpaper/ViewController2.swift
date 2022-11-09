//
//  ViewController2.swift
//  SeasonWallpaper
//
//  Created by ATTA SK on 19/08/2022.
//

import UIKit


class ViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource
{
   
    @IBOutlet weak var Seasontable: UITableView!
    
    let Swp = ["Summer","Winter","Automn","Spring","MoonSoon"]
    
    let SumrImg = ["Summer1","Summer2","Summer3","Summer4","Summer5","Summer6","Summer7","Summer8","Summer9","Summer10"]
    let SummerLbl = ["Summer1","Summer2","Summer3","Summer4","Summer5","Summer6","Summer7","Summer8","Summer9","Summer10"]
    
    let WintrImg = ["Winter1","Winter2","Winter3","Winter4","Winter5","Winter6","Winter7","Winter8","Winter9","Winter10"]
    let WintrLbl = ["Winter1","Winter2","Winter3","Winter4","Winter5","Winter6","Winter7","Winter8","Winter9","Winter10"]
    
    let AtmImg = ["Autumn1","Autumn2","Autumn3","Autumn4","Autumn5","Autumn6","Autumn7","Autumn8","Autumn9","Autumn10"]
    let AtmLbl = ["Autumn1","Autumn2","Autumn3","Autumn4","Autumn5","Autumn6","Autumn7","Autumn8","Autumn9","Autumn10"]
    
    let SprImg = ["Spring1","Spring2","Spring3","Spring4","Spring5","Spring6","Spring7","Spring8","Spring9","Spring10"]
    let SprLbl = ["Spring1","Spring2","Spring3","Spring4","Spring5","Spring6","Spring7","Spring8","Spring9","Spring10"]
    
    let MonImg = ["Monsoon1","Monsoon2","Monsoon3","Monsoon4","Monsoon5","Monsoon6","Monsoon7","Monsoon8","Monsoon9","Monsoon10"]
    let MonLbl = ["Monsoon1","Monsoon2","Monsoon3","Monsoon4","Monsoon5","Monsoon6","Monsoon7","Monsoon8","Monsoon9","Monsoon10"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Swp.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.Sname.text! = Swp[indexPath.row]
        
        return cell
    }
    
    
    //DidSelect Function In Table View
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print("You have clicked on  \(Swp[indexPath.row]) Season")
        
        let sdata = Swp[indexPath.row]
        
        
        
    let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController3") as? ViewController3
    self.navigationController?.pushViewController(vc!, animated: true)
    
        if (sdata == Swp[0]) {
            vc?.titlelbl = "Summer"
            vc?.imgs = SumrImg
            vc?.lblarr = SummerLbl

        }
        else  if (sdata == Swp[1]) {
            vc?.titlelbl = "Winter"
            vc?.imgs = WintrImg
            vc?.lblarr = WintrLbl
        }
        else  if (sdata == Swp[2]) {
            vc?.titlelbl = "Autumn"
            vc?.imgs = AtmImg
            vc?.lblarr = AtmLbl
            
        }
        else  if (sdata == Swp[3]) {
            vc?.titlelbl = "Spring"
            
            vc?.imgs = SprImg
            vc?.lblarr = SprLbl
            
        }
        else  if (sdata == Swp[4]) {
            vc?.titlelbl = "MoonSoon"
            
            vc?.imgs = MonImg
            vc?.lblarr = MonLbl
            
        }
        else {
            print("Plz Select any Item")
        }
        
        //vc?.sData = WaS
       
        //vc?.imgarr =
    
        
        
    }
    

   

}
