const std = @import("std");

var prng = std.rand.DefaultPrng.init(0);

pub fn modifier(score: i8) i8 {
    return @divFloor(score, 2) - 5;
}

pub fn ability() i8 {
    var random = prng.random();
    var rolls: [4]i8 = undefined;
    for (rolls) |*roll| {
        roll.* = random.intRangeAtMost(i8, 1, 6);
    }
    std.sort.sort(i8, &rolls, {}, std.sort.desc(i8));
    return rolls[0] + rolls[1] + rolls[2];
}

pub const Character = struct {
    strength: i8,
    dexterity: i8,
    constitution: i8,
    intelligence: i8,
    wisdom: i8,
    charisma: i8,
    hitpoints: i8,
    pub fn init() Character {
        const constitution = ability();
        return @This(){
            .strength = ability(),
            .dexterity = ability(),
            .constitution = constitution,
            .intelligence = ability(),
            .wisdom = ability(),
            .charisma = ability(),
            .hitpoints = 10 + modifier(constitution),
        };
    }
};
