//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = ["Joe": "Peanut Butter and Chocolate",
    "Tim": "Natural Vanilla",
    "Sophie": "Mexican Chocolate",
    "Deniz": "Natural Vanilla",
    "Tom": "Mexican Chocolate",
    "Jim": "Natural Vanilla",
    "Susan": "Cookies 'N' Cream"]
    
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var names: [String] = []
        
        for (name, flavorName) in favoriteFlavorsOfIceCream {
            if flavor == flavorName {
                names.append(name)
            }
        }
        return names
    }
    
    
    
    
    // 3.
    
    
    func count(forFlavor flavor: String) -> Int {
        var n = 0
        for (_, flavorName) in favoriteFlavorsOfIceCream {
            if flavor == flavorName {
                n += 1
            }
        }
        return n
    }
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        if let falvor = favoriteFlavorsOfIceCream[person] {
            return falvor
        }
        return nil
    }
    
    
    
    
    
    // 5.
   
    
    func replace(flavor: String, forPerson person: String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream[person] {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
        return false
    }
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream[person] {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        }
        return false
    }
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor falvor: String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream[person] {
            return false
        }
        favoriteFlavorsOfIceCream[person] = falvor
        return true
    }
    
    
    
    
    
    
    
    // 9.
    
    
    func attendeeList() -> String {
        var allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var list = ""
        for name in allNames {
            if let iceCream = favoriteFlavorsOfIceCream[name] {
                list += "\(name) likes \(iceCream)"
                allNames.remove(at: 0)
                if !allNames.isEmpty {
                    list += "\n"
                }
            }
            
        }
        
        return list
        
    }
    
    
    
    
    

}
