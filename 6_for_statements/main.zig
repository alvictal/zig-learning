// Using test / expect argument to show how to test the code. You need to use "zig test main.zig" instead "zig run main.zig" to run the tests.
const expect = @import("std").testing.expect;
const std = @import("std");

// For loops follow this syntax. Like while, for loops can use break and continue. Here, we’ve had to assign values to _, as Zig does not allow us to have unused values.
test "for" {
    //character literals are equivalent to integer literals
    const string = [_]u8{ 'a', 'b', 'c', 'd' };

    for (string, 0..) |character, index| {
        std.debug.print("char: {}, index {}\n", .{ character, index });
    }

    for (string) |character| {
        _ = character;
    }

    for (string, 0..) |_, index| {
        _ = index;
    }

    for (string) |_| {}
}
