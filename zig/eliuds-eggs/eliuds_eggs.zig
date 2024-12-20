pub fn eggCount(number: usize) usize {
    var count: usize = 0;
    for (0..@bitSizeOf(usize)) |i| {
        count += number >> @intCast(i) & 0b1;
    }
    return count;
}
