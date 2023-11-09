class QueenAttack {

    static canAttack(Queen q1, Queen q2) {
        int dx = Math.abs(q1.row - q2.row)
        int dy = Math.abs(q1.column - q2.column)
        
        dx == 0 || dy == 0 || dx == dy
    }
}
