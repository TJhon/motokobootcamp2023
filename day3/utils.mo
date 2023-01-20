import Int "mo:base/Int";
import Array "mo:base/Array";
import Bool "mo:base/Bool";
import Buffer "mo:base/Buffer";
import Iter "mo:base/Iter";
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

    func drop<T>(xs: [T], n: Nat): [T]{
        let length: Nat = xs.size();
        if(length < n) return [];
        var newR = Buffer.Buffer<T>(0);
        for(i in Iter.range(n-1, length-1)){
            newR.add(xs[i]);
        };
        return Buffer.toArray(newR)

    };
    //        public func find_duplicates(a : [Nat]) : async [Nat] {

    //     var dup = Buffer.Buffer<Nat>(0);
    //     var ori = Buffer.Buffer<Nat>(0);
    //     for(val1 in a.vals()){
    //         for(val2 in ori.vals()){
    //             if(val2 == val1){
    //                 dup.add(val2)
    //             }
    //         };
    //         ori.add(val1);
    //     };
    //     return Buffer.toArray(dup);
    // }; 
        // var newRange = Iter.range(n - 1, length -1);
        // Array.tabulate(n - 1, length - 1);
        // newRAnge := Buffer.toArray(newRange);
        // return xs[nr]
    // func drop<T>(xs : [T], n : Nat) : [T] {
    //     return Array.tabulate<T>(n, func (i) = xs[i+n] );
    // };
}