const std = @import("std");

fn tak(x: u32, y: u32, z: u32) u32 {
    if (y < x) {
        return tak(
            tak(x - 1, y, z),
            tak(y - 1, z, x),
            tak(z - 1, x, y),
        );
    } else {
        return z;
    }
}

pub fn main() !void {
    var buffer: [256]u8 = undefined;
    var fba = std.heap.FixedBufferAllocator.init(&buffer);
    const allocator = fba.allocator();

    const args = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, args);

    const x = try std.fmt.parseInt(u32, args[1], 10);
    const y = try std.fmt.parseInt(u32, args[2], 10);
    const z = try std.fmt.parseInt(u32, args[3], 10);

    const stdout = std.io.getStdOut().writer();
    try stdout.print("{}\n", .{tak(x, y, z)});
}
