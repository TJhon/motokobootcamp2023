## 1. Who controls the ledger canister?

- Controlled by the nnsroot canister, NNS DAO

## 2. What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How many nodes are running this subnet?

- `pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe`
- 16 nodes

![](.\id.png)

[`source`](`https://dashboard.internetcomputer.org/subnet/pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe`)

## 3. I have a neuron with 10 ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

- [source](https://internetcomputer.org/docs/current/tokenomics/nns/nns-staking-voting-rewards/#voting-power)

- 10 ICP = 10 Principal Voting Power
- 4 years: power bonus of 1.4986
- 2 years: power bonus of 1.125.
- expected voting power is 10 _ 1.4986 _ 1.125 = 16.85925

## 4. What is wrong with the following code?

```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };

}
```

- `we need import module`: `import Nat "mo:base/Nat";`

<!-- `The function performs the conversion but returns nothing`

-->

```
import Nat "mo:base/Nat";

actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    let nat_text:Text = Nat.toText(m);
    return nat_text;
  };

}
```

## 5. What is wrong with the following code?

```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };

}
```

- We need import Array module: `import Array "mo:base/Array";`
- Cannot share the `var` property as follows `[var text]`, it must be like that, we need to add into array `[var "English", "German", "Chinese", "Japanese", "French"]`
- `query` => `public query func ...`

```
import Array "mo:base/Array;
actor {
  var languages : [var Text] = [var "English", "German", "Chinese", "Japanese", "French"];

  public query func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
}
```

## 6. What is wrong with the following code?

`Array.append`: copies its arguments and has linear complexity

```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];
  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
}
```

[`Buffer`](https://internetcomputer.org/docs/current/developer-docs/build/cdks/motoko-dfinity/base/Buffer)

```
import Buffer "mo:base/Buffer";
import Array "mo:base/Array";

actor {
  var languages : [var Text] = [var "English", "German", "Chinese", "Japanese", "French"];
  var buffer = Buffer.fromVarArray(languages);

  public func add_language(new_language: Text) : async [Text] {
    buffer.add(new_language);
    return buffer.toArray();
  };

}
```
