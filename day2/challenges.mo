import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Char "mo:base/Char";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
actor{
    public func average_array(array: [Int]): async Int{
        let n: Nat = array.size();
        var total: Int = 0;
        for(value in array.vals()){
            total := total + value;
        };
        return total / n;
    };
    public func count_character(t: Text, c: Char): async Nat{
        var count: Nat = 0;
        // let array_str: [Text] = split(t, " ");
        for(value in t.chars()){
            if(value == c){
                count := count + 1
            };
        };
        return count;
    };
    public func factorial(n: Nat): async Nat{
        var result: Nat = 1;
        if(n == 0) {
         return 1
        // } else{
            // result := factorial(n - 1) * n;
        };
        for(i in Iter.range(1, n)){
            result := result * i;
        };
        return result;
    };
    // public func 
}