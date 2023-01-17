import Nat "mo:base/Nat";
import Float "mo:base/Float";
import Bool "mo:base/Bool";
// import Nat "mo:base/Nat";
// Escribe una función multiply que tome dos números naturales y devuelva el producto.
// multiply(n : Nat, m : Nat) -> async Nat
// Escribe una función volume que tome dos números naturales n y devuelva el volumen de un cubo con una longitud de lado n.
// volume(n : Nat) -> async Nat
// Escribe una función hours_to_minutes que tome un número de horas n y devuelve el número de minutos.
// hours_to_minutes(n : Nat) -> async Nat
// Escribe dos funciones set_counter y get_counter.
// set_counter establece el valor del counter a n
// get_counter devuelve el valor actual del counter.
// set_counter(n : Nat) -> async ()
// get_counter() -> async Nat
// Escribe una función test_divide que tome dos números naturales n y m y devuelva un boolean indicando si n es divisible entre m.
// test_divide(n: Nat, m : Nat) -> async Bool
// Escribe una función is_even que tome un número natural n y devuelva un boolean indicando si n es par.
// is_even(n : Nat) -> async Bool 


// actor{
//     public func geet(name: Text): async Text{P
//         return ("Hi" # name # "!")
//     }
// }

actor{
    public func multiply(n: Nat, m: Nat): async Nat{
        let result:Nat = n * m;
        return result;
    };
    public func volume(n:Nat): async Nat{
        let result:Nat = n * n *  n;
        return result;
    };
    public func hours_to_minutes(n: Nat): async Nat{
        let result:Nat = n * 60;
        return result;
    };
    var counter:Nat = 0;
    public func set_counter(n: Nat): async (){
        counter := n;
        // return counter;
    };
    public func get_counter(): async Nat{
        return counter;
        // return set_counter();
    };
    public func test_divide(n: Nat, m: Nat): async Bool{
        let result: Bool = n % m == 0;
        return result;
    };
    public func is_even(n: Nat): async Bool{
        let result: Bool = n % 2 == 0 ;
        return result;
    }
}