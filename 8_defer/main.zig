const expect = @import("std").testing.expect;
const std = @import("std");

// Defer is used to garantee that all resources are cleanud up at the end of statment
// super important this keywork because mitigate the memory leaks
test "defer" {
    var x: i16 = 5;
    {
        defer x += 2;
        try expect(x == 5);
    }
    try expect(x == 7);
}

test "multi defer" {
    var x: f32 = 5;
    {
        defer x += 2;
        defer x /= 2;
    }

    try expect(x == 4.5);
}
