//
//  Person.swift
//  ProtocolFun



import Foundation


protocol Love {
    var isMarried: Bool { get set }
    var spouse: Self? { get set }
}

extension Love {
    
    mutating func getMarried(to person: Self) {
        spouse = person
    }
    
}


final class Unicorn: Love {
    
    var isMarried: Bool
    weak var spouse: Unicorn?
    
    
    init(isMarried: Bool, spouse: Unicorn?) {
        self.isMarried = isMarried
        self.spouse = spouse
    }
}


let test = Unicorn(isMarried: false, spouse: Unicorn(isMarried: true, spouse: nil))


if test is Love {
    
    
}


//final class Person: Love {
//    
//    var name: String
//    var isMarried: Bool = false
//
//    var spouse: Person
//    init(name: String, spouse: Person) {
//        self.name = name
//        self.spouse = spouse
//    }
//    
//   
//    
//}
//
//
//final class Unicorn: Love {
//    
//    var name: String
//    var isMarried: Bool = false
//    var spouse: Unicorn
//    
//    init(name: String) {
//        self.name = name
//    }
//
//}