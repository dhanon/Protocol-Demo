protocol CanFly {
    func fly()
}
class Bird {
    var isfemale = true
    
    func layEgg(){
        if isfemale {
            print("The bird make a new bird in a shell.")
        }
    }
}

class Eagle: Bird,CanFly {
    
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    func soar(){
        print("The eagle glides in the air using air current.")
    }
}

class Penguin:Bird{
    func swim(){
        print("The penguine paddles through the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly){
        flyingObject.fly()
    }
    
}

struct Airplane: CanFly {
    func fly(){
        print("The airplane uses its engine to lift off into the air. ")
    }
}

let myEagle =  Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)

