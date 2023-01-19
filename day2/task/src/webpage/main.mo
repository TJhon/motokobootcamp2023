actor {
    stable var value: Nat = 0;
    
    // dfx canister call webpage increment
    public func set_value(n: Nat): async () {
        value += n;
    };

    // dfx canister call webpage getValue
    public query func getValue(): async Nat {
        value;
    };
};