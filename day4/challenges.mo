import List "mo:base/List";
import Buffer "mo:base/Buffer";
import Order "mo:base/Order";
import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
// import Principal "mo:base/Principal";
actor{
    public type List<T> = (T, List<T>);
    // func unique<T>(l : List<T>, equal: (T,T) -> Bool): List<T>{
    //     let array = Buffer.fromArray<T>(List.toArray<T>(l));
    //     Buffer.removeDuplicates<T>(array, equal)
    // }
    // public func reverse<T>(l: List<T>): async List<T>{
    //     return List.reverse(l);
    // }
    // let reverse = func<T>(l: List<T>): async List<T>{
    //     return List.reverse(l);
    // };
    
    // 3.
    public shared ({caller}) func is_anonymous(): async Bool{
        Principal.isAnonymous(caller)
    };
    
    // 4.
    let find_in_buffer = func<T> (buf: Buffer.Buffer<T>, val: T, equal: (T,T) -> Bool): async ?Nat {
    // public  func find_in_buffer <T> (buf: Buffer.Buffer<T>, val: T, equal: (T,T) -> Bool): async ?Nat {
        return Buffer.indexOf<T>(val, buf, equal)
    };
    
    // 5.
    let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

    public shared ({ caller }) func add_username(name : Text) : async () {
      usernames.put(caller, name);
    };

    public func get_usernames(): async [(Principal, Text)]{
        let solo_user = Iter.toArray<(Principal, Text)>(usernames.entries());
        return solo_user;
    }
 
}