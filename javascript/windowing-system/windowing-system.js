export function Size(width = 80, height = 60) {
  this.width = width;
  this.height = height;
}

Size.prototype.resize = function (newWidth, newHeight) {
  this.width = newWidth;
  this.height = newHeight;
}

export function Position(x = 0, y = 0) {
  this.x = x;
  this.y = y;
}

Position.prototype.move = function (newX, newY) {
  this.x = newX;
  this.y = newY;
}

export class ProgramWindow {
  constructor() {
    this.screenSize = new Size(800, 600);
    this.size = new Size();
    this.position = new Position();
  }

  resize(newSize) {
    if (newSize.width < 1) newSize.width = 1;
    if (newSize.height < 1) newSize.height = 1;
    if (newSize.width + this.position.x > this.screenSize.width) newSize.width = this.screenSize.width - this.position.x;
    if (newSize.height + this.position.y > this.screenSize.height) newSize.height = this.screenSize.height - this.position.y;
    this.size.height = newSize.height;
    this.size.width = newSize.width;
  }

  move(newPosition) {
    if (newPosition.x < 0) newPosition.x = 0;
    if (newPosition.y < 0) newPosition.y = 0;
    if (newPosition.x + this.size.width > this.screenSize.width) newPosition.x = this.screenSize.width - this.size.width;
    if (newPosition.y + this.size.height > this.screenSize.height) newPosition.y = this.screenSize.height - this.size.height;
    this.position.x = newPosition.x;
    this.position.y = newPosition.y;
  }
}

export function changeWindow(window) {
  window.size = new Size(400, 300);
  window.position = new Position(100, 150);
  return window;
}
