const std = @import("std");

pub fn main() void {
    // This is a immutable variable (integer of 32 bits), try to use more of const variable for memmory security purposes
    const a: i32 = 5;
    // This is a mutable variable (unsigned integer of 32 bits)
    var b: u32 = 50;
    //Every variable needs to start with a value. If a value is not know, we should give the value of undefined.
    var c: i32 = undefined;

    b = b + 10;
    c = 10;
    std.debug.print("Variable a: {}\n", .{a});
    std.debug.print("Variable b: {}\n", .{b});
    std.debug.print("Variable c: {}\n", .{c});

    // @as performs an explicity type coercion
    const i_a = @as(i32, 4);
    const i_b = @as(u32, 40);

    std.debug.print("Variable i_a type: {}, value {}\n", .{ @TypeOf(i_a), i_a });
    std.debug.print("Variable i_b type: {}, value {}\n", .{ @TypeOf(i_b), i_b });
}

// Primitives
// i8	int8_t	signed 8-bit integer
// u8	uint8_t	unsigned 8-bit integer
// i16	int16_t	signed 16-bit integer
// u16	uint16_t	unsigned 16-bit integer
// i32	int32_t	signed 32-bit integer
// u32	uint32_t	unsigned 32-bit integer
// i64	int64_t	signed 64-bit integer
// u64	uint64_t	unsigned 64-bit integer
// i128	__int128	signed 128-bit integer
// u128	unsigned __int128	unsigned 128-bit integer
// isize	intptr_t	signed pointer sized integer
// usize	uintptr_t, size_t	unsigned pointer sized integer. Also see #5185
// c_char	char	for ABI compatibility with C
// c_short	short	for ABI compatibility with C
// c_ushort	unsigned short	for ABI compatibility with C
// c_int	int	for ABI compatibility with C
// c_uint	unsigned int	for ABI compatibility with C
// c_long	long	for ABI compatibility with C
// c_ulong	unsigned long	for ABI compatibility with C
// c_longlong	long long	for ABI compatibility with C
// c_ulonglong	unsigned long long	for ABI compatibility with C
// c_longdouble	long double	for ABI compatibility with C
// f16	_Float16	16-bit floating point (10-bit mantissa) IEEE-754-2008 binary16
// f32	float	32-bit floating point (23-bit mantissa) IEEE-754-2008 binary32
// f64	double	64-bit floating point (52-bit mantissa) IEEE-754-2008 binary64
// f80	double	80-bit floating point (64-bit mantissa) IEEE-754-2008 80-bit extended precision
// f128	_Float128	128-bit floating point (112-bit mantissa) IEEE-754-2008 binary128
// bool	bool	true or false
// anyopaque	void	Used for type-erased pointers.
// void	(none)	Always the value void{}
// noreturn	(none)	the type of break, continue, return, unreachable, and while (true) {}
// type	(none)	the type of types
// anyerror	(none)	an error code
// comptime_int	(none)	Only allowed for comptime-known values. The type of integer literals.
// comptime_float	(none)	Only allowed for comptime-known values. The type of float literals.
