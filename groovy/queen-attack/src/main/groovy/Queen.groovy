class Queen {
    
    int row
    int column

    Queen(int row, int column) {
        if (row < 0 || column < 0 || row > 7 || column > 7) throw new Exception()
        this.row = row
        this.column = column
    }
}
