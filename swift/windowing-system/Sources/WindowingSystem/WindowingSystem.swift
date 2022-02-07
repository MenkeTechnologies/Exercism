struct Position {
    var x = 0
    var y = 0

    mutating func moveTo(newX: Int, newY: Int) {
        x = newX
        y = newY
    }
}

struct Size {

    var width = 80
    var height = 60

    mutating func resize(newWidth: Int, newHeight: Int) {
        width = newWidth
        height = newHeight
    }

}

class Window {

    var title = "New Window"
    var screenSize = Size(width: 800, height: 600)
    var size = Size()
    var position = Position()
    var contents: String?

    init() {
    }

    init(_ t: String, _ sz: Size, _ pos: Position, _ cont: String?) {
        title = t
        size = sz
        position = pos
        contents = cont
    }


    func resize(to s: Size) {
        size.width = min(max(1, s.width), screenSize.width - position.x)
        size.height = min(max(1, s.height), screenSize.height - position.y)
    }

    func move(to pos: Position) {
        position.x = min(max(0, pos.x), screenSize.width - size.width)
        position.y = min(max(0, pos.y), screenSize.height - size.height)
    }

    func update(title t: String) {
        title = t
    }

    func update(text: String?) {
        contents = text
    }

    func display() -> String {
        "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contents ?? "[This window intentionally left blank]")\n"
    }

}

let mainWindow = Window("Main Window", Size(width: 400, height: 300), Position(x: 100, y: 100), "This is the main window")
