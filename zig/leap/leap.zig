pub fn isLeapYear(year: u32) bool {
    const is_mod_4 = year % 4 == 0;
    const is_mod_100 = year % 100 == 0;
    const is_mod_400 = year % 400 == 0;
    return (is_mod_4 and !is_mod_100) or (is_mod_100 and is_mod_400);
}
