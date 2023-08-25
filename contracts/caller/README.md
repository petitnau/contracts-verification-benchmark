# Caller
## Specification
The contract acts as a wrapper to Solidity's `call` function.

## Properties
- **p1**: the contract balance is unchanged after a call to  `callwrap`.
- **p2**: the contract storage is unchanged after a call to `callwrap`.

## Versions
- **v1**: reentrant `callwrap`.
- **v2**: non-reentrant `callwrap`.
- **v3**: reentrant `callwrap` and additional reentrant function `modifystorage`.
- **v4**: non-reentrant `callwrap` and additional reentrant function `modifystorage`.
- **v5**: non-reentrant `callwrap` and additional non-reentrant function `modifystorage`.