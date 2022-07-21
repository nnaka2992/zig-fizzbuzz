const std = @import("std");
const expect = std.testing.expect;
const fmt = std.fmt;

pub fn fizzbuzz(n: u16) []const u8 {
    if (n != 0) {
        if (n % 15 == 0) return "fizzbuzz";
        if (n % 3 == 0) return "fizz";
        if (n % 5 == 0) return "buzz";
    }
    var s: [32]u8 = undefined;
    var ret: []u8 = std.fmt.bufPrintIntToSlice(&s, n, 10, fmt.Case.lower, fmt.FormatOptions{});
    return ret;
}

test "fizzbuzz 0" {
    try expect(std.mem.eql(u8, fizzbuzz(0), "0"));
}
test "fizzbuzz 1" {
    try expect(std.mem.eql(u8, fizzbuzz(1), "1"));
}

test "fizzbuzz 2" {
    try expect(std.mem.eql(u8, fizzbuzz(2), "2"));
}

test "fizzbuzz 3" {
    try expect(std.mem.eql(u8, fizzbuzz(3), "fizz"));
}

test "fizzbuzz 4" {
    try expect(std.mem.eql(u8, fizzbuzz(4), "4"));
}

test "fizzbuzz 5" {
    try expect(std.mem.eql(u8, fizzbuzz(5), "buzz"));
}

test "fizzbuzz 6" {
    try expect(std.mem.eql(u8, fizzbuzz(6), "fizz"));
}

test "fizzbuzz 7" {
    try expect(std.mem.eql(u8, fizzbuzz(7), "7"));
}

test "fizzbuzz 8" {
    try expect(std.mem.eql(u8, fizzbuzz(8), "8"));
}

test "fizzbuzz 9" {
    try expect(std.mem.eql(u8, fizzbuzz(9), "fizz"));
}

test "fizzbuzz 10" {
    try expect(std.mem.eql(u8, fizzbuzz(10), "buzz"));
}

test "fizzbuzz 11" {
    try expect(std.mem.eql(u8, fizzbuzz(11), "11"));
}

test "fizzbuzz 12" {
    try expect(std.mem.eql(u8, fizzbuzz(12), "fizz"));
}

test "fizzbuzz 13" {
    try expect(std.mem.eql(u8, fizzbuzz(13), "13"));
}

test "fizzbuzz 14" {
    try expect(std.mem.eql(u8, fizzbuzz(14), "14"));
}

test "fizzbuzz 15" {
    try expect(std.mem.eql(u8, fizzbuzz(15), "fizzbuzz"));
}
