const expect = @import("std").testing.expect;
const std = @import("std");

// functions is similar to C
// All functions argments are immutable, you must explicity to make one
fn addFive(x: u32) u32 {
    return x + 5;
}

test "functions" {
    const y = addFive(0);
    try expect(@TypeOf(y) == u32);
    try expect(y == 5);
}

// Recursion
fn fibonacci(n: u16) u16 {
    if (n == 0 or n == 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

test "functions recursion" {
    const x = fibonacci(10);
    try expect(x == 55);
}