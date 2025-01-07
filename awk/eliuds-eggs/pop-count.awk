{
    for (cnt = 0; $0; $0 = rshift($0, 1)) cnt += $0 % 2
    print cnt
}
