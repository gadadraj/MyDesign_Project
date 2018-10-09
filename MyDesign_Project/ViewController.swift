//
//  ViewController.swift
//  MyDesign_Project
//
//  Created by Rajsekhar on 09/10/18.
//  Copyright © 2018 Rajshekhar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
 
    @IBOutlet weak var myTabeView: UITableView!
    var encodedData:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        basicEncoding()
        basicDecoding()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        self.myTabeView.estimatedRowHeight = 60.0
        self.myTabeView.rowHeight = UITableViewAutomaticDimension
        self.myTabeView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 45
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CstmTVCell
        let image = UIImage(named: "logo")
        cell.myImageView.image = image
        for i in 0...45 {
            cell.txtLabel.text = String("Label name starts from \(i)")
        
        }
        return cell
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Write a Swift program to compute the sum of the two integers. If the values are equal return the triple their sum.
    func triple_sum(a:Int,b:Int) -> Int {
        if(a == b ){
            return (a + b)*3
        }else{
            return (a + b)
             }
        }
    //Write a Swift program to compute and return the absolute difference of n and 51, if n is over 51 return double the absolute difference
    func diff_51(x: Int) -> Int {
        if x > 51 {
            return (x - 51 ) * 2
        }else{
            return 51 - x
        }
    }
    // Write a Swift program that accept two integer values and return true if one of them is 20 or if their sum is 20.
    func make_20(X:Int, Y:Int) -> Bool {
        if(X+Y == 20 || X == 20 || Y == 20){
            return true
        }else{
            return false
        }
    }
    // Write a Swift program to add "Is" to the front of a given string. However, if the string already begins with "Is", return the given string.
    
    func isString(word: String) -> String {
        if word.hasPrefix("Is") == true{
            return word
        }else{
            return "Is \(word)"
        }
    }
    //Write a Swift program to remove a character at specified index of a given non-empty string. The value of the specified index will be in the range 0..str.length()-1 inclusive
    func remove_char (str1:String, n:Int) -> String {
        let count = str1.count
        var newWord = str1
        let index = str1.index(str1.startIndex, offsetBy: n)
        if count > 0{
            newWord.remove(at: index)
            
        }
        return newWord
    }
    //Write a Swift program to change the first and last character of a given stgring.
    func first_last(str1:String) -> String {
        let count = str1.count
        if(count >= 1){
            return str1
        }
        var result = str1
        let first_char = result.remove(at: result.startIndex)
        let findLast = result.index(after: result.endIndex)
        let last_char = result.remove(at: findLast)
        result.append(first_char)
        result.insert(last_char, at:( result.startIndex))
        return result
    }
    //Write a Swift program to accept two integer values and return true if one is negative and one is positive. Return true only if both are negative.
    func test_num(x :Int, y:Int) -> Bool {
      if x < 0 && y < 0 {
            return true
        }else if x < 0 && y > 0
        {
            return true
        }else if x > 0  && y < 0 {
            return true
        }else{
            return false
        }
     }
    
    
    func basicEncoding()
    {
        //Basic Encoding and Decoding
        let carObj = Car()
        carObj.name = "City ZX"
        carObj.isNew = true
        carObj.yearOfManufacture = 2018
        carObj.companyURL = URL(string: "www.honda.com")
        carObj.carType = .Sedan
        carObj.otherDetailsData = ["color":"Red","fuelType":"Petrol"]
        carObj.carSize = CarSize(height: 100, length: 200)
        
        //Encode to Json format
        let encodedObject = try? JSONEncoder().encode(carObj)
        //Encode to plist format
        //let plistObject1 = try? PropertyListEncoder().encode(carObj)
        if let encodedObjectJsonString = String(data: encodedObject!, encoding: .utf8)
        {
            print(encodedObjectJsonString)
            encodedData = encodedObjectJsonString
            //Output
            //{"carSize":{"length":200,"height":100},"companyURL":"www.honda.com","isNew":true,"otherDetailsData":{"color":"Red","fuelType":"Petrol"},"yearOfManufacture":2018,"carType":"Sedan","name":"City ZX"}
        }
        print("End of the Story...")
        print("The End")
    }

    func basicDecoding() {
//        let jsonString = """
//                        {
//                            "name":"City ZX",
//                            "isNew":true,
//                            "yearOfManufacture":2018,
//                            "companyURL":"www.honda.com",
//                            "carType":"Sedan",
//                            "carSize":{
//                                       "height":200,
//                                       "height":100
//                                   },
//                            "otherDetailsData":{
//                                       "color":"Red",
//                                       "fuelType":"Petrol"
//                                   },
//                        }
//                        """
        if let jsonData = encodedData.data(using: .utf8)
        {
            //And here you get the Car object back
            let carObject = try? JSONDecoder().decode(Car.self, from: jsonData)
            print(carObject?.name as Any)
            print(carObject?.carSize as Any)
            print(carObject?.carType as Any)
            
        }
    }
    //Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
    func check_firstLast(arra:[Int]) -> Bool {
        guard arra.count > 0 else {
            return false
        }
        if arra.first == arra.last
        {
            return true
        }else
        {
            return false
        }
    }
    //Write a Swift program to test if two given arrays of integers have the same first or last element. Both arrays length must be 1 or more.
    func first_last(a:[Int], b:[Int]) -> Bool {
        guard a.count > 0, b.count > 0 else{
            return false
        }
        if a.first == b.first || a.last == b.last {
            return true
        }else{
            return false
        }
    }
    //Write a Swift program to compute the sum of all the elements of a given an array of integers and length 4.
    func sum4(arraa:[Int]) -> Int {
        return arraa.reduce(0, +)
    }
}

