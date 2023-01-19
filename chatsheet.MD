# How to deploy a Canister

- DFX version 0.12.1
  - `dfx --version`
  - `dfx upgrade`

## Identity

- `dfx identity whoami`
- `dfx identity list`
- `dfx identity new {identity}`
- `dfx identity use {identity}`
- `dfx identity remove {identity}`

## Ledger

<!-- buy cicles -->

`dfx ledger --network ic create-canister <principal-identifier> --amount <icp-tokens>

- `dfx ledger` ledger comand
- `--network ic` working on-chain
- `create-canister` create
- `<principal-identifier>` user principal
- `--amount <icp-tokens>` icp to cycles

## Wallet

- `dfx identity --network ic get-wallet`
- `dfx wallet --network ic balance`

## Project

### `dfx.json`

```
{
    "canisters":{
        "first_canister"{
            "main": "path1.mo",
            "type": "motoko"
        },
        "sec_canister"{
            "main": "path2.mo",
            "type": "motoko"
        }
    }
}
```

### Canister

```js
canister{
    {type of function} func {name_function}(Param1: {Type of param}): async {Type of return}{
        // inside function
    }
}
```

```js
actor{
    public func geet(name: Text): async Text{
        return ("Hi" # name # "!")
    }
}
```

## Deploy

- from dfx.json
- `dfx canister --network ic create {first_canister} --with-cycles 1000000000000`

## Day 2

```js
public func number_of_word(t: Text): async Nat{
    let space: Pattern = #char(' '); // patter for space
    let arr_new = Text.split(t, space);
    let arr = Iter.toArray<Text>(arr_new);
    return arr.size();
};
```
