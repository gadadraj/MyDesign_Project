//
//  BED.swift
//  MyDesign_Project
//
//  Created by Rajsekhar on 09/10/18.
//  Copyright © 2018 Rajshekhar. All rights reserved.
//

import Foundation

enum CarType:String,Codable{
    case Unknown
    case SUV
    case Sedan
    case Hatchback
    case Racing
}
struct CarSize:Codable {
    var height:Double
    var length:Double
}

class MyClass : NSObject,Codable {
    var myVar:String = ""
    var myArray:[String] = [String]()
    var otherDetails:[String:String] = [String:String]()
    var childObjects:[MyClass] = [MyClass]()
    }
class Car: NSObject,Codable{
    var name :String = ""
    var companyURL:URL? = nil
    var yearOfManufacture: Int = 0
    var isNew:Bool = true
    
    var otherDetailsData : [String:String]? = nil
    var carType: CarType = .Unknown
    var carSize:CarSize = CarSize(height: 0, length: 0)
    
}
