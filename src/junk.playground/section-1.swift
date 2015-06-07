import UIKit

var str = "Hello, playground"
var lala = 12.0001

let la = 34
lala/0*0

print(la)
print(str)
print("string \(lala*Double(la))  cool")
var laa = lala*Double(la)

if laa != lala{
    "ddd"
}

switch la{
case 1...49:"dd"
case 2:"ee"
default: break
}

for i in 1...3 {
    "WW"
}

func myFunc(age : Int = 33) -> String{
    println(age)
    return "bb"
}

myFunc(age: 2)
myFunc(age: 6)


let arr1 = [2,3,4]
var arrS = ["a","b"]

var arrS2 : [String]

arrS2


var dic1 = ["a":"AAA","b":"BBB"]

var dic2 = [Int,String]()

if var res = dic1["x"]{
    println("aaa aa \(res)")
}

let num : Int = 2

enum SeatPref{
    case One
    case Two
    case NotSet
}
var pref : SeatPref
pref = .Two

switch pref{
case .Two:
    println("22")
default:
    break
}

let myClosure = {print("ss")}









let unsorted : Array = [6,4,7]


func compare (first : Int, second : Int) -> Bool{
    return first<second
}



var sorteda = sorted(unsorted,{
    (first : Int, second : Int) -> Bool in
        return first<second
})

class MyClass{
    var prop1 : String = ""
    let prop2 : Int
    
    init() {
        prop2 = 0
    }
    
    
    
    init(p1 : String){
        self.prop1 = p1
        self.prop2 = 2
    }
    
    deinit{
        
    }
}

var inst = MyClass(p1: "ccc")

class MyChild : MyClass {
    class var cprop4 : Int{
        return 2
    }
    var prop3 : Int
    
    override init() {
        self.prop3 = 3
        super.init()
    }
    
    override init(p1: String) {
        self.prop3 = 4
        super.init(p1: p1)
    }
    
    func desc() -> String{
        return "prop1 \(prop1)"
    }
    
}


var child = MyChild(p1: "pppp")

child.desc()



let date = NSDate()
let url = NSURL(string: "http://www.google.com")


protocol Cleaner{
    func cleanFloor()
    var prop1 : Bool {get set} //like C#
}

var msg = "reverse this"

extension String{
    func revers() -> String {
        let wordsArray = self.componentsSeparatedByString(" ")
        let reversedAr = wordsArray.reverse()
        var newstr = ""
        for eachWord in reversedAr{
            newstr += eachWord + " "
        }
        return newstr
    }
}

msg.revers()


//optionals? is nilabile. compiler will not allow non optionals to be used unless it has value. == nil checks if it's not set. ! is like forceGetValue (not safe)
//string interpolation is cool "\()"
//ranges are cool 1...10, 0..<10
//func return types are shown AFTER params with -> (remember input -> output)
//named parameters! nice readibility
//classes do not inherit from Object
//closure type inside brackets: { (first : Int, second : Int) -> Bool in ...}
//props are stored or calculated, like C#. property observers willSet{newValue}didSet{oldValue}. not called initially
//var or let in class are props
//let is like C# readme, must be set in init
//class before prop name to make it class prop!
//lazy  before prop name to make lazy eval
//inits for constructors
//enums are powerful and can be extended. shortcuts available
//access levels are file controlled. Default is internal (like C#s)
//public, private, internal
//tuples are cool, implicit types!? (1,"2",3)
//struct like C# (value type), vs class ref type. SAME AS C#. struct has a nice memberwise initializer to init all props. String, Array, Dictionary are structs
//operators&whitespace: pay attention to whitespace, it should not be unbalanced, should be the same size on both sides of operator a = b good a= b bad
//=== check identical object references, different from == equal. How do we pass Array around and change it?? How do we implement Equals and Hash?
//other ops 0..<10, 
//?? to set default for optionals like C#
//for item in items{} is typesafe
//item is MyClass/item as MyClass operator to downcast like C#. we can also use "as?" operator and check for null like C# as
//% modulus works with float and negative nums as well
//we can use objc libs as such: import UIKit
//Foundation extends String with the NSString stuff. IT AUTOMAGICALLY BRIDGES THE WORLDS and uses AnyObject
//I can use NSDate etc classes as if they are Swift classes
//if let item = dic["a"]{} is true if value exists
//AnyObject or Any is replacement for Object/id, since classes don't inherit from Object. It's used for legacy. AnyObject is like dynamic in C#, it allows any method call! Use is, as, as? to check before calling dangerous stuff
//protocol is like interface in C#.
//Extensions are like categories objc or extention methods C#
//Generics: arrays are always [Int]. fun foo<Tin, Tout>(in : Tin) -> Tout syntax like C#. Benefits of generic flexibility of dynamic with type safety
//weak keyword for weak refs!
//No exception handling?! READ MORE





//SAFETY!
//switch forces you to be exaustive!
//non optionals MUST be set before using (less null exceptions)
//heavy use of let (constants), helping with a more immutable/functional style. let must be set in init()
//NO DEFAULTS ON primitives. Int does not have default 0!
//Arrays always typed (like C# generics)
//struct == immutable (value copied)
//overflow checking by default


//READIBILITY!
//named params
//less gunk, lots of implicits
//default access is internal (nice default)
//no new operator, no semicolon necessary










































