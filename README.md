# Reproducer for llvm/llvm-project#244928

`InstrRefBasedLDV::emitTransfers` sorts each Transfer's `Insts` by `DebugVariableID`
with `llvm::sort`. A Transfer can hold several different DBG_VALUE_LISTs for the same
variable. Their order then depends on the standard library's `std::sort`, and the last
one wins.

    llc -O3 -relocation-model=pic repro.ll -stop-after=livedebugvalues -o out.mir

`repro.ll` is reduced with llvm-reduce from ring 0.17.14 `crypto/curve25519/curve25519.c`
(`table_select`), compiled by clang 23.1.3 for x86_64-unknown-linux-musl at `-O3 -g -fPIC`.

The DBG_INSTR_REFs for `in` (!15) and `src` (!20) come before
`MOV64rm ... @k25519Precomp, debug-instr-number 1`, which defines the value they use.
LiveDebugValues emits all 24 of them in one Transfer after that instruction:
12 for each variable.

Outputs from llc 23.1.3 (nixpkgs):

| File | Built with | Last `src` | Last `in` |
|---|---|---|---|
| `out-libcxx.mir` | libc++ (aarch64-darwin) | base + 192 | base + 576 |
| `out-libstdcxx.mir` | libstdc++ (x86_64-linux) | base + 480 | base + 576 |
| `out-stable-sort.mir` | libc++, with the PR | base + 192 | base + 96 |

Without `-relocation-model=pic` the three outputs are identical.
