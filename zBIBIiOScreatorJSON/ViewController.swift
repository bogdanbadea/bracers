//  ioscreator.com/tutorials/json-parsing-tutorial-ios8-swift
//  ViewController.swift
//  zBIBIiOScreatorJSON
//
//  Created by Bibi Badea on 5/15/15.
//  Copyright (c) 2015 stormbraces. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var aaa: UILabel!
    @IBOutlet weak var bbb: UILabel!
    @IBOutlet weak var ccc: UILabel!
    @IBOutlet weak var ddd: UILabel!
    @IBOutlet weak var eee: UILabel!
    @IBOutlet weak var fff: UILabel!
    @IBOutlet weak var ggg: UILabel!
    
    @IBOutlet weak var ida: UILabel!
    @IBOutlet weak var idb: UILabel!
    @IBOutlet weak var idc: UILabel!
    @IBOutlet weak var idd: UILabel!
    @IBOutlet weak var ide: UILabel!
    @IBOutlet weak var idf: UILabel!
    @IBOutlet weak var idg: UILabel!
    
    @IBOutlet weak var a: UILabel!
    @IBOutlet weak var b: UILabel!
    @IBOutlet weak var c: UILabel!
    @IBOutlet weak var d: UILabel!
    @IBOutlet weak var e: UILabel!
    @IBOutlet weak var f: UILabel!
    @IBOutlet weak var g: UILabel!
    
    @IBOutlet weak var ta: UILabel!
    @IBOutlet weak var tb: UILabel!
    @IBOutlet weak var tc: UILabel!
    @IBOutlet weak var td: UILabel!
    @IBOutlet weak var te: UILabel!
    @IBOutlet weak var tf: UILabel!
    @IBOutlet weak var tg: UILabel!
    
    @IBOutlet weak var da: UILabel!
    @IBOutlet weak var db: UILabel!
    @IBOutlet weak var dc: UILabel!
    @IBOutlet weak var dd: UILabel!
    @IBOutlet weak var de: UILabel!
    @IBOutlet weak var df: UILabel!
    @IBOutlet weak var dg: UILabel!
    

    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var refreshActivityIndicator: UIActivityIndicatorView!
    

    
    func getREFRESSSH() -> Void {
        
        //////////
        ////////
        //////
        ////
        ///
        //
        
        
        var numaru : Int?
        //
        //    let bibi      = 1
        //    let sebi      = 2
        //    let abel      = 3
        //    let manu      = 4
        //    let gabi      = 5
        //    let andrei    = 6
        //    let dacian    = 7
        //
        
        func b(numaru : Int) {
            //1om
            let nrApi = numaru
            let wpUrlToGetData = "http://stormbracers.bibi.wf/wp-content/themes/twentyfifteen/api/api\(nrApi).php"
            let wpUrlSWIFT = NSURL(string: wpUrlToGetData)!
            let wpUrlAppassionatta = NSURLSession.sharedSession()
            //2
            let jsonIntrebare = wpUrlAppassionatta.dataTaskWithURL(wpUrlSWIFT, completionHandler: {
                data, response, error -> Void in
                
                if (error != nil) {
                    println(error.localizedDescription)
                }
                var err: NSError?
                //3
                var jsonRezultat = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as! NSDictionary
                
                if(err != nil) {
                    ("JSON ERROR!!!!! \(err?.localizedDescription)")
                }
                //4
                let wwwUID: String! = jsonRezultat["uid"] as! String
                dispatch_async(dispatch_get_main_queue(), {
                    switch numaru {
                    case 1:
                        self.ida.text = wwwUID
                    case 2:
                        self.idb.text = wwwUID
                    case 3:
                        self.idc.text = wwwUID
                    case 4:
                        self.idd.text = wwwUID
                    case 5:
                        self.ide.text = wwwUID
                    case 6:
                        self.idf.text = wwwUID
                    case 7:
                        self.idg.text = wwwUID
                    default:
                        self.ida.text = wwwUID
                    }
                })
                let wwwUSERLOGIN: String! = jsonRezultat["user_login"] as! String
                dispatch_async(dispatch_get_main_queue(), {
                    switch numaru {
                    case 1:
                        self.a.text = wwwUSERLOGIN
                    case 2:
                        self.b.text = wwwUSERLOGIN
                    case 3:
                        self.c.text = wwwUSERLOGIN
                    case 4:
                        self.d.text = wwwUSERLOGIN
                    case 5:
                        self.e.text = wwwUSERLOGIN
                    case 6:
                        self.f.text = wwwUSERLOGIN
                    case 7:
                        self.g.text = wwwUSERLOGIN
                    default:
                        self.a.text = wwwUSERLOGIN
                    }
                })
                let wwwUSEREMAIL: String! = jsonRezultat["user_email"] as! String
                dispatch_async(dispatch_get_main_queue(), {
                    switch numaru {
                    case 1:
                        self.aaa.text = wwwUSEREMAIL
                    case 2:
                        self.bbb.text = wwwUSEREMAIL
                    case 3:
                        self.ccc.text = wwwUSEREMAIL
                    case 4:
                        self.ddd.text = wwwUSEREMAIL
                    case 5:
                        self.eee.text = wwwUSEREMAIL
                    case 6:
                        self.fff.text = wwwUSEREMAIL
                    case 7:
                        self.ggg.text = wwwUSEREMAIL
                    default:
                        self.aaa.text = wwwUSEREMAIL
                    }
                })
                let wwwTIME: String! = jsonRezultat["time"] as! String
                dispatch_async(dispatch_get_main_queue(), {
                    switch numaru {
                    case 1:
                        self.ta.text = wwwTIME
                    case 2:
                        self.tb.text = wwwTIME
                    case 3:
                        self.tc.text = wwwTIME
                    case 4:
                        self.td.text = wwwTIME
                    case 5:
                        self.te.text = wwwTIME
                    case 6:
                        self.tf.text = wwwTIME
                    case 7:
                        self.tg.text = wwwTIME
                    default:
                        self.ta.text = wwwTIME
                    }
                })
                let wwwTIMECOPY: String! = jsonRezultat["timeCopy"] as! String
                dispatch_async(dispatch_get_main_queue(), {
                    switch numaru {
                    case 1:
                        self.da.text = wwwTIMECOPY
                    case 2:
                        self.db.text = wwwTIMECOPY
                    case 3:
                        self.dc.text = wwwTIMECOPY
                    case 4:
                        self.dd.text = wwwTIMECOPY
                    case 5:
                        self.de.text = wwwTIMECOPY
                    case 6:
                        self.df.text = wwwTIMECOPY
                    case 7:
                        self.dg.text = wwwTIMECOPY
                    default:
                        self.da.text = wwwTIMECOPY
                    }
                    
                    //stop refresh
                    self.refreshActivityIndicator.stopAnimating()
                    self.refreshActivityIndicator.hidden = false
                    self.refreshButton.hidden = false
                })
            })
            //5
            jsonIntrebare.resume()
            
            
            
            //////////
            ////////
            //////
            ////
            ///
            //
        }
        
                b(1)
                b(2)
                b(3)
                b(4)
                b(5)
                b(6)
                b(7)

        
//        return ""
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

refreshActivityIndicator.hidden = true
getREFRESSSH()
        
        
//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\//
//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\//
//
//getREFRESSSH.b(1)
//b(2)
//b(3)
//b(4)
//b(5)
//b(6)
//b(7)

//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\//
//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\//
    }
    
    
 

    @IBAction func refresh() {
        getREFRESSSH()
        
        refreshButton.hidden = true
        refreshActivityIndicator.hidden = false
        refreshActivityIndicator.startAnimating()
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}






