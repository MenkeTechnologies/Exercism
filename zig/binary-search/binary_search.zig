pub const SearchError = error{
    ValueAbsent,
    EmptyBuffer,
};

pub fn binarySearch(comptime T: type, target: usize, buffer: ?[]const T) SearchError!usize {
    const buff = buffer orelse return SearchError.EmptyBuffer;

    if (buff.len == 0) {
        return SearchError.EmptyBuffer;
    }

    var lo: usize = 0;
    var hi: usize = buff.len;

    while (lo < hi) {
        const mid = lo + ((hi - lo) / 2);
        if (buff[mid] == target) {
            return mid;
        } else if (buff[mid] > target) {
            hi = mid;
        } else {
            lo = mid + 1;
        }
    }
    return SearchError.ValueAbsent;
}
