1.  Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?
    - Stored if declared as `stable` variable
    - Is 4G, divided into two areas: `from space` and to space.
2.  How much accounts can a unique Principal own?
    - Unlimited number
3.  Can we safely upgrade a canister from interface A to interface B?
    - Maybe not, as there is no information being stored in the canister's memory, but possibly yes, due to the additional parameter.
