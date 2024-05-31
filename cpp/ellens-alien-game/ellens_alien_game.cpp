namespace targets {
    class Alien {
    private:
        int health{3};
    public:
        int x_coordinate;
        int y_coordinate;

        Alien(int x, int y) {
            x_coordinate = x;
            y_coordinate = y;
        }

        int get_health() const { return health; }

        bool hit() {
            if (health > 0) { health--; }
            return true;
        }

        bool is_alive() const { return health > 0; }

        bool teleport(int new_x, int new_y) {
            x_coordinate = new_x;
            y_coordinate = new_y;
            return true;
        }

        bool collision_detection(Alien alien) const {
            return alien.x_coordinate == x_coordinate && alien.y_coordinate == y_coordinate;
        }
    };
}
