////
////  functiiOameni.swift
////  zBIBIiOScreatorJSON
////
////  Created by Bibi Badea on 5/15/15.
////  Copyright (c) 2015 stormbraces. All rights reserved.
////
//
//import Foundation
//
//
//cla
//
//
//// *********************** //
//
//let bibi      = "http://stormbracers.bibi.wf/wp-content/themes/twentyfifteen/api/api1.php"
//let sebi      = "http://stormbracers.bibi.wf/wp-content/themes/twentyfifteen/api/api2.php"
//let abel      = "http://stormbracers.bibi.wf/wp-content/themes/twentyfifteen/api/api3.php"
//let manu      = "http://stormbracers.bibi.wf/wp-content/themes/twentyfifteen/api/api4.php"
//let gabi      = "http://stormbracers.bibi.wf/wp-content/themes/twentyfifteen/api/api5.php"
//let andrei    = "http://stormbracers.bibi.wf/wp-content/themes/twentyfifteen/api/api6.php"
//let dacian    = "http://stormbracers.bibi.wf/wp-content/themes/twentyfifteen/api/api7.php"
//
//// *********************** //
//
//
////1
//// let wpUrlToGetData = "http://stormbracers.bibi.wf/wp-content/themes/twentyfifteen/api/api.php"
//
//func bibi() {
//    
//    
//    let wpUrlSWIFT = NSURL(string: bibi)!
//    let wpUrlAppassionatta = NSURLSession.sharedSession()
//    
//    //2
//    let jsonIntrebare = wpUrlAppassionatta.dataTaskWithURL(wpUrlSWIFT, completionHandler: {
//        data, response, error -> Void in
//        
//        if (error != nil) {
//            println(error.localizedDescription)
//        }
//        var err: NSError?
//        
//        //3
//        var jsonRezultat = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as! NSDictionary
//        
//        if(err != nil) {
//            println("JSON ERROR!!!!! \(err?.localizedDescription)")
//        }
//        //4
//        
//        let wpoooUserEmail: String! = jsonRezultat["user_email"] as! String
//        
//        
//        dispatch_async(dispatch_get_main_queue(), {
//            
//            userEmailLabelDYNAMIC.text = wpoooUserEmail
//            
//        })
//        
//        
//    })
//    
//    //5
//    jsonIntrebare.resume()
//    
//}