{
    let u176max := 0xffffffffffffffffffffffffffffffffffffffff
    let a := create(0, u176max, 0)
    let b := and(u176max, create(0, u176max, 0))
    mstore(0, eq(a, b))
}
// ----
// Trace:
//   CREATE(0, 0xffffffffffffffffffffffffffffffffffffffff, 0)
//   CREATE(0, 0xffffffffffffffffffffffffffffffffffffffff, 0)
// Memory dump:
//      0: 0000000000000000000000000000000000000000000000000000000000000001
// Storage dump:
