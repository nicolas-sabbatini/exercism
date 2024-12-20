pub fn squareOfSum(number: usize) usize {
    var sum: usize = 0;
    for (0..number) |i| {
        sum += i + 1;
    }
    return sum * sum;
}

pub fn sumOfSquares(number: usize) usize {
    var sum: usize = 0;
    for (0..number) |i| {
        sum += (i + 1) * (i + 1);
    }
    return sum;
}

pub fn differenceOfSquares(number: usize) usize {
    return squareOfSum(number) - sumOfSquares(number);
}
