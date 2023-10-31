// Create a const variable and associate to a library, similiar with python "import numpy as np"
const std = @import("std");

// Create the void function main, make the function public
pub fn main() void {
    // Using the std library to use function print from class/struct debug with one string argument. Argumen used between {}
    std.debug.print("Hello, {s}!\n", .{"World"});
}
