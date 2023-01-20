import Int "mo:base/Int";
import Array "mo:base/Array";
import Bool "mo:base/Bool";
actor{
    public func second_maximum(array: [Int]): async Int{
        // array;
        var pos: Nat = 0;
        let length: Nat = array.size();
        if(length < 1){
            return pos;
        };
        if(length == 1){
            return array[0];
        };
        let sorted: [Int]= Array.sort<Int>(array, Int.compare);
        return sorted[length - 2]
    };
    
    public func remove_even(array: [Nat]): async [Nat]{
        let not_even = Array.filter<Nat>(array, func (x: Nat) : Bool = x % 2 != 0);
        return not_even;
    };

    // public func drop<T>(xs: [T], n: Nat): async [T]{
    //     var i = 0;


    // }
}