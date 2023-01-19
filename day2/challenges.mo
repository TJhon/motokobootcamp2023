import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Char "mo:base/Char";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Array "mo:base/Array";
import Debug "mo:base/Debug";
import Buffer "mo:base/Buffer";
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

        var dup = Buffer.Buffer<Nat>(0);
        var ori = Buffer.Buffer<Nat>(0);
        for(val1 in a.vals()){
            for(val2 in ori.vals()){
                if(val2 == val1){
                    dup.add(val2)
                }
            };
            ori.add(val1);
        };
        return Buffer.toArray(dup);
    }; 
    public func convert_to_binary(n : Nat) : async Text {
        var number: Nat = n;
        var remainder: Text = "";
        var result: Text = "";

        while (number > 0){
            remainder := Nat.toText(number % 2);
            result := Text.concat(remainder, result);
            number := number / 2;
        };

        return result;
    };

}