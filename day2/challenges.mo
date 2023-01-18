import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Char "mo:base/Char";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Array "mo:base/Array";
import Debug "mo:base/Debug";
actor{
    type Pattern = Text.Pattern;
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
        // let path: Pattern = #char(c);
        
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
    public func number_of_word(t: Text): async Nat{
        let space: Pattern = #char(' ');
        let arr_new = Text.split(t, space);
        let arr = Iter.toArray<Text>(arr_new);
        return arr.size();
    };
    public func find_duplicates(a : [Nat]) : async [Nat] {

        var ret : [Nat] = [];

        for(i in Iter.range(0, a.size()-1)) {

            for(j in Iter.range(i+1, a.size()-1)){

            if(a[i] == a[j]){
                ret := Array.append<Nat>(ret, [a[j]]);
            };

            };
        };
        return ret
    }; 
}