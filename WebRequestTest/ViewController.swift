//
//  ViewController.swift
//  WebRequestTest
//
//  Created by Nick on 1/19/16.
//  Copyright © 2016 Nick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://swapi.co/api/people/1/"
        let url = NSURL(string: urlString)!
        let session = NSURLSession.sharedSession()
        
        session.dataTaskWithURL(url) { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            
            if let responseData = data {
                
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(responseData, options: NSJSONReadingOptions.AllowFragments)
                    
                    if let dict = json as? Dictionary<String, AnyObject> {
                        
                        if let name = dict["name"] as? String, let height = dict["height"] as? String, let birth = dict["birth_year"] as? String, let hair = dict["hair_color"] as? String {
                            
                            let person = SWPerson(name: name, height: height, birthYear: birth, hairColor: hair)
                            
                            print(person.name)
                            
                        }
                    }
                } catch {
                    print("Could not serialize response data")
                }
            }
            
        }.resume()
    }


}

