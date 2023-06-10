pub const NucleotideError = error{Invalid};
pub const Counts = struct { a: u32 = 0, c: u32 = 0, g: u32 = 0, t: u32 = 0 };

pub fn countNucleotides(s: []const u8) NucleotideError!Counts {
    var dict = Counts{};
    for (s) |c| switch (c) {
        'A' => dict.a += 1,
        'C' => dict.c += 1,
        'G' => dict.g += 1,
        'T' => dict.t += 1,
        else => return NucleotideError.Invalid,
    };
    return dict;
}
