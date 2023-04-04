const std = @import("std");
const EnumSet = std.EnumSet;

pub const Allergen = enum(u8) {
    eggs = 1,
    peanuts = 2,
    shellfish = 4,
    strawberries = 8,
    tomatoes = 16,
    chocolate = 32,
    pollen = 64,
    cats = 128,
};

pub fn isAllergicTo(score: u8, allergen: Allergen) bool {
    return @enumToInt(allergen) & score > 0;
}

pub fn initAllergenSet(score: usize) EnumSet(Allergen) {
    const enum_info = @typeInfo(Allergen).Enum;
    const bit_len = enum_info.fields.len;
    const tag_type = enum_info.tag_type;
    const mask = std.bit_set.IntegerBitSet(bit_len){ .mask = @truncate(tag_type, score) };
    return .{ .bits = mask };
}
