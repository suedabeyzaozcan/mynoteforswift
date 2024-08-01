//
//  main.swift
//  IleriSeviyeSwift
//
//  Created by Sueda Beyza Özcan on 1.08.2024.
//

import Foundation

//Struck -> intheritance yok, - filo stack (RAM), daha hızlı, daha basit, value type, immutable
//class -> intheritance var, -fifo heap (RAM),referance type, mutable, objective-c

let suedaSinif = UserClass(isim: "sueda", yas: 70, meslek: "mühendis")
//print(sueda.meslek)
/*let suedaStruct = UserStruct(isim: "beyza", yas: 33, meslek: "yazılımcı")
//print(sueda.meslek)
 için değişmesini istiyorsak var eklenir*/
 var suedaStruct = UserStruct(isim: "beyza", yas: 70, meslek: "yazılımcı")

suedaSinif.yas = 33
print(suedaSinif.yas)

// değiştirmek hata veriyor  var eklenmese hata veririr!!
suedaStruct.yas = 33
print(suedaStruct)
//Referans ve Değer farkı
let suedaSinifKopyasi = suedaSinif
var suedaStructKopyasi = suedaStruct

print(suedaSinifKopyasi.yas)
print(suedaSinifKopyasi.yas)

suedaSinifKopyasi.yas = 34
suedaStructKopyasi.yas = 34

print(suedaSinifKopyasi.yas)
print(suedaSinifKopyasi.yas)

print(suedaSinif.yas)
print(suedaStruct.yas)
// referance type -> class
// kopyalam yapıldığında tek bir obje var, 2 referans var

//value type -> struct
// koyalama yapıldığında iki obje var
print(suedaSinif.yas)
suedaSinif.yasiBirArttir()
print(suedaSinif.yas)
      

//mutating func sonrası
print(suedaStruct.yas)
suedaStruct.yasiBirArttir()
print(suedaStruct.yas)

//Tuple(kendi içind index)
var benimTuple = (10,20)
print(benimTuple.0)

var benimTuple2 = (10,20,30,40)
print(benimTuple2.3)

benimTuple2.3 = 50
print(benimTuple2.3)
let benimTuple3 = ("sueda", 33)
print(benimTuple3.0)
print(benimTuple3.1)


let benimTuple4 = ("sueda",[1,2,3,4])
print(benimTuple4.1[2])

let benimNumaram : Int?

let benimoncedenbelirlenenTuple : (String, String)

benimoncedenbelirlenenTuple.0 = "beyza"
benimoncedenbelirlenenTuple.1 = "ozcan"

print(benimoncedenbelirlenenTuple)
let yeniTuple = (isim: "melek", soyisim:"akkok")
print(yeniTuple.isim)

//Guard Let

let numaraStringi = "5"
func intecevirenIfLetFonk(string : String)-> Int{
    if let benimIntegerim = Int(string){
        return benimIntegerim
    }else{
        return 0
    }
}
print(intecevirenIfLetFonk(string: numaraStringi))

func intecevirenGartLetFonk(string : String) -> Int{
    guard let benimIntegerim = Int(string) else {
        return 10
    }
    return benimIntegerim
}
print(intecevirenGartLetFonk(string: numaraStringi))


//SWITCH CASE if else mantığı
let gunSayisi = 4
var gunStringi = ""




switch gunSayisi {
case 1:
    gunStringi = "pazartesi"
case 2:
    gunStringi = "salı"
case 3:
    gunStringi = "çarşamba"
    //hiç bie değer uymazsa defaukt
default:
    gunStringi = "pazartesi"

}


//breakpoint
