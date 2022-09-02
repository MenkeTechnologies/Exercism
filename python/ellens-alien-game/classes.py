def new_aliens_collection(positions):
    return list(map(lambda position: Alien(position[0], position[1]), positions))


class Alien:
    total_aliens_created = 0

    def __init__(self, x, y, health=3):
        self.x_coordinate = x
        self.y_coordinate = y
        self.health = health
        Alien.total_aliens_created += 1

    def hit(self):
        self.health -= 1

    def is_alive(self):
        return self.health > 0

    def teleport(self, x, y):
        self.x_coordinate = x
        self.y_coordinate = y

    def collision_detection(self, _):
        pass
