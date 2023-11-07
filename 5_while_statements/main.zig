// Using test / expect argument to show how to test the code. You need to use "zig test main.zig" instead "zig run main.zig" to run the tests.
const expect = @import("std").testing.expect;
const std = @import("std");

test "while" {
    var i: u8 = 2;

    std.debug.print("\n", .{});
    while (i < 100) {
        i *= 2;
        std.debug.print("i: {}\n", .{i});
    }

    try expect(i == 128);
}

// Interesting using of with with a continue expression, that make while statement more similar to for statement in c (not equal)
test "while with continue expression" {
    var sum: u8 = 0;
    var i: u8 = 1;

    std.debug.print("\n", .{});
    while (i <= 10) : (i += 1) {
        sum += i;
        std.debug.print("i: {}, sum {}\n", .{ i, sum });
    }

    try expect(sum == 55);
}

// Continue statement is similar to the break on C language
test "while with continue" {
    var sum: u8 = 0;
    var i: u8 = 1;

    std.debug.print("\n", .{});
    while (i <= 3) : (i += 1) {
        if (i == 2) continue;
        sum += i;
        std.debug.print("i: {}, sum {}\n", .{ i, sum });
    }

    try expect(sum == 4);
}

// Break statement is similar to the break on C language
test "while with break" {
    var sum: u8 = 0;
    var i: u8 = 1;

    std.debug.print("\n", .{});
    while (i <= 3) : (i += 1) {
        if (i == 2) break;
        sum += i;
        std.debug.print("i: {}, sum {}\n", .{ i, sum });
    }

    try expect(sum == 1);
}
