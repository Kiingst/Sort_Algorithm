
import Foundation


func sort(ArrayFirst: [String], input: String) -> [String] {

    var Array = ArrayFirst
    var SortNumArray: [Int] = []
    Array.insert(input, at: 0)

    for i in 0...Array.count - 1 {
        SortNumArray.append(get_SortNum(Word1: Array[i]))
    }

    var x = isArrayTrue(Array: SortNumArray)
    while x == false {

        for i in 0...Array.count - 1 {
            if i + 1 <= Array.count - 1 {

                let tempi1 = SortNumArray[i]
                let tempi2 = SortNumArray[i + 1]
                let tempWord1 = Array[i]
                let tempWord2 = Array[i + 1]

                if SortNumArray[i] > SortNumArray[i + 1] {

                    Array[i] = tempWord2
                    Array[i + 1] = tempWord1

                    SortNumArray[i] = tempi2
                    SortNumArray[i + 1] = tempi1

                }

            }
        }
        x = isArrayTrue(Array: SortNumArray)
    }
   // print("Returing Array")
    return Array
}

func get_SortNum(Word1: String) -> Int{
    let Word = Word1.lowercased()
    var sortNum: Int = 0
    // print(Word.fisrt!)
    switch  Word.first! {
    case "a":
        sortNum = 010000
    case "b":
        sortNum = 020000
    case "c":
        sortNum = 030000
    case "d":
        sortNum = 040000
    case "e":
        sortNum = 050000
    case "f":
        sortNum = 060000
    case "g":
        sortNum = 070000
    case "h":
        sortNum = 080000
    case "i":
        sortNum = 090000
    case "j":
        sortNum = 100000
    case "k":
        sortNum = 110000
    case "l":
        sortNum = 120000
    case "m":
        sortNum = 130000
    case "n":
        sortNum = 140000
    case "o":
        sortNum = 150000
    case "p":
        sortNum = 160000
    case "q":
        sortNum = 170000
    case "r":
        sortNum = 180000
    case "s":
        sortNum = 190000
    case "t":
        sortNum = 200000
    case "u":
        sortNum = 210000
    case "v":
        sortNum = 220000
    case "w":
        sortNum = 230000
    case "x":
        sortNum = 240000
    case "y":
        sortNum = 250000
    case "z":
        sortNum = 260000
    default:
        sortNum = 270000
       // print(Word)
       // fatalError("Unsupported")
    }
    if Word.count >= 2 {
        switch Word[Word.index(Word.startIndex, offsetBy: 1)] {
        case "a":
            sortNum += 0100
        case "b":
            sortNum += 0200
        case "c":
            sortNum += 0300
        case "d":
            sortNum += 0400
        case "e":
            sortNum += 0500
        case "f":
            sortNum += 0600
        case "g":
            sortNum += 0700
        case "h":
            sortNum += 0800
        case "i":
            sortNum += 0900
        case "j":
            sortNum += 1000
        case "k":
            sortNum += 1100
        case "l":
            sortNum += 1200
        case "m":
            sortNum += 1300
        case "n":
            sortNum += 1400
        case "o":
            sortNum += 1500
        case "p":
            sortNum += 1600
        case "q":
            sortNum += 1700
        case "r":
            sortNum += 1800
        case "s":
            sortNum += 1900
        case "t":
            sortNum += 2000
        case "u":
            sortNum += 2100
        case "v":
            sortNum += 2200
        case "w":
            sortNum += 2300
        case "x":
            sortNum += 2400
        case "y":
            sortNum += 2500
        case "z":
            sortNum += 2600
        default:
            sortNum += 2700
           // print(Word)
           // fatalError("Unsupported")
        }
    }
    if Word.count >= 3 {
        switch Word[Word.index(Word.startIndex, offsetBy: 2)]{
        case "a":
            sortNum += 1
        case "b":
            sortNum += 2
        case "c":
            sortNum += 3
        case "d":
            sortNum += 4
        case "e":
            sortNum += 5
        case "f":
            sortNum += 6
        case "g":
            sortNum += 7
        case "h":
            sortNum += 8
        case "i":
            sortNum += 9
        case "j":
            sortNum += 10
        case "k":
            sortNum += 11
        case "l":
            sortNum += 12
        case "m":
            sortNum += 13
        case "n":
            sortNum += 14
        case "o":
            sortNum += 15
        case "p":
            sortNum += 16
        case "q":
            sortNum += 17
        case "r":
            sortNum += 18
        case "s":
            sortNum += 19
        case "t":
            sortNum += 20
        case "u":
            sortNum += 21
        case "v":
            sortNum += 22
        case "w":
            sortNum += 23
        case "x":
            sortNum += 24
        case "y":
            sortNum += 25
        case "z":
            sortNum += 26

        default:
            sortNum += 27
           // print(Word)
           // fatalError("Unsupported")
        }
    }
    return sortNum
}

func isArrayTrue(Array:[Int]) -> Bool {
    for i in 0...Array.count - 1 {

        if i + 1 <= Array.count - 1 {

            if Array[i] > Array[i + 1]{

                return false

            }
        }
    }
    return true
}

var x : [String] = ["ok"]
var u : [String] = []
print("Type A word then enter to add to a list for them to be sorted")
print("Type Ctrl-D to exit")
var line : String?
repeat {
//    print("Please Enter A Random word:") 
    line = readLine()
    if line != nil {
        x.insert(line!, at: 0)
         
        
    }
} while line != nil


x.sort()


   // print("Please Enter A Random word:")    
  //  let input = readLine()
  //  u = sort(ArrayFirst: x, input: input!)
  //  x = u
    //print(x.sort())


print(x)
print("Finished")

