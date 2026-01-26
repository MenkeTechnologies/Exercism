sub post ( :$tweet ) is export {
    substr $tweet, 0, 5
}
