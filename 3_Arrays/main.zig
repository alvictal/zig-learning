const std = @import("std");

pub fn main() void {
    // Array in the simple way
    const a = [5]u8{ 'h', 'e', 'l', 'l', 'o' };

    // In this case we are asking the compiler to discover the size of array using [_]
    const b = [_]u8{ 'w', 'o', 'r', 'l', 'd' };

    // To print and array as string we need the format {s} instead the empty {}
    std.debug.print("Array \"{s}\" \"{s}\" with b len {}\n", .{ a, b, b.len });
}
