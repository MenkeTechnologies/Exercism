enum LogLevel: Int {
    case trace = 0
    case debug = 1
    case info = 4
    case warning = 5
    case error = 6
    case fatal = 7
    case unknown = 42
    init(_ line: String) {
        let levels = ["[TRC]": 0,
                      "[DBG]": 1,
                      "[INF]": 4,
                      "[WRN]": 5,
                      "[ERR]": 6,
                      "[FTL]": 7
        ]
        for (k, v) in levels {
            if line.hasPrefix(k) {
                self = LogLevel(rawValue: v)!
                return
            }
        }
        self = LogLevel.unknown
    }
    func shortFormat(message: String) -> String {
        "\(self.rawValue):\(message)"
    }
}

