# Question

1. How much is the current memory capacity of a canister?

- One canister can store up to 48GB of data

2. What is the issue with the following code sample?

```
actor{
    let counter: Nat = 0;
    public fun increment_counter(): async(){
        counter := counter + 1;
    };
}
```

- The variable `counter` is declared as `let`, `let` is inmutable, we can not change the value for `counter`

```mo
actor {
  var counter : Nat = 0; /// let -> var
  public func increment_counter() : () {
    counter = counter + 1;
  };
}
```

3. What is wrong with the following code?

```
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };

  public query func see_message() : async Text {
    return(message);
  };
}
```

- The variable `message` is defined as `Text` but is begin assigned with a 0 (`Nat`)
- Function `change_message` is changing the state can't be query.

4. False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.

- `False`
