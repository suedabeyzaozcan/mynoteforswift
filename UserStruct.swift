//
//  UserStruct.swift
//  IleriSeviyeSwift
//
//  Created by Sueda Beyza Özcan on 1.08.2024.
//

import Foundation

struct UserStruct {
    var isim : String
    var yas : Int
    var meslek :  String
    
    mutating func yasiBirArttir() {
        self.yas += 1
    }
    
}
