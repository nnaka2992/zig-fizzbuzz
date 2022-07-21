const std = @import("std");
const fizzbuzz = @import("./fizzbuzz.zig");

pub fn main() anyerror!void {
    var i: u16 = 0;
    var s: []const u8 = undefined;
    while (i < 30) : (i += 1) {
        s = fizzbuzz.fizzbuzz(i);
        std.debug.print("{s}\n", .{s});
    }
}
