Imports Xunit

Public Class PokerTests
    <Fact>
    Public Sub Single_hand_always_wins()
        Dim hands = {"4S 5S 7H 8D JC"}
        Dim actual = BestHands(hands)
        Dim expected = {"4S 5S 7H 8D JC"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Highest_card_out_of_all_hands_wins()
        Dim hands = {"4D 5S 6S 8D 3C", "2S 4C 7S 9H 10H", "3S 4S 5D 6H JH"}
        Dim actual = BestHands(hands)
        Dim expected = {"3S 4S 5D 6H JH"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub A_tie_has_multiple_winners()
        Dim hands = {"4D 5S 6S 8D 3C", "2S 4C 7S 9H 10H", "3S 4S 5D 6H JH", "3H 4H 5C 6C JD"}
        Dim actual = BestHands(hands)
        Dim expected = {"3S 4S 5D 6H JH", "3H 4H 5C 6C JD"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Multiple_hands_with_the_same_high_cards_tie_compares_next_highest_ranked_down_to_last_card()
        Dim hands = {"3S 5H 6S 8D 7H", "2S 5D 6D 8C 7S"}
        Dim actual = BestHands(hands)
        Dim expected = {"3S 5H 6S 8D 7H"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub One_pair_beats_high_card()
        Dim hands = {"4S 5H 6C 8D KH", "2S 4H 6S 4D JH"}
        Dim actual = BestHands(hands)
        Dim expected = {"2S 4H 6S 4D JH"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Highest_pair_wins()
        Dim hands = {"4S 2H 6S 2D JH", "2S 4H 6C 4D JD"}
        Dim actual = BestHands(hands)
        Dim expected = {"2S 4H 6C 4D JD"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Two_pairs_beats_one_pair()
        Dim hands = {"2S 8H 6S 8D JH", "4S 5H 4C 8C 5C"}
        Dim actual = BestHands(hands)
        Dim expected = {"4S 5H 4C 8C 5C"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Both_hands_have_two_pairs_highest_ranked_pair_wins()
        Dim hands = {"2S 8H 2D 8D 3H", "4S 5H 4C 8S 5D"}
        Dim actual = BestHands(hands)
        Dim expected = {"2S 8H 2D 8D 3H"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Both_hands_have_two_pairs_with_the_same_highest_ranked_pair_tie_goes_to_low_pair()
        Dim hands = {"2S QS 2C QD JH", "JD QH JS 8D QC"}
        Dim actual = BestHands(hands)
        Dim expected = {"JD QH JS 8D QC"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Both_hands_have_two_identically_ranked_pairs_tie_goes_to_remaining_card_kicker_()
        Dim hands = {"JD QH JS 8D QC", "JS QS JC 2D QD"}
        Dim actual = BestHands(hands)
        Dim expected = {"JD QH JS 8D QC"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Both_hands_have_two_pairs_that_add_to_the_same_value_win_goes_to_highest_pair()
        Dim hands = {"6S 6H 3S 3H AS", "7H 7S 2H 2S AC"}
        Dim actual = BestHands(hands)
        Dim expected = {"7H 7S 2H 2S AC"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Two_pairs_first_ranked_by_largest_pair()
        Dim hands = {"5C 2S 5S 4H 4C", "6S 2S 6H 7C 2C"}
        Dim actual = BestHands(hands)
        Dim expected = {"6S 2S 6H 7C 2C"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Three_of_a_kind_beats_two_pair()
        Dim hands = {"2S 8H 2H 8D JH", "4S 5H 4C 8S 4H"}
        Dim actual = BestHands(hands)
        Dim expected = {"4S 5H 4C 8S 4H"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Both_hands_have_three_of_a_kind_tie_goes_to_highest_ranked_triplet()
        Dim hands = {"2S 2H 2C 8D JH", "4S AH AS 8C AD"}
        Dim actual = BestHands(hands)
        Dim expected = {"4S AH AS 8C AD"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub With_multiple_decks_two_players_can_have_same_three_of_a_kind_ties_go_to_highest_remaining_cards()
        Dim hands = {"4S AH AS 7C AD", "4S AH AS 8C AD"}
        Dim actual = BestHands(hands)
        Dim expected = {"4S AH AS 8C AD"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub A_straight_beats_three_of_a_kind()
        Dim hands = {"4S 5H 4C 8D 4H", "3S 4D 2S 6D 5C"}
        Dim actual = BestHands(hands)
        Dim expected = {"3S 4D 2S 6D 5C"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Aces_can_end_a_straight_10_j_q_k_a_()
        Dim hands = {"4S 5H 4C 8D 4H", "10D JH QS KD AC"}
        Dim actual = BestHands(hands)
        Dim expected = {"10D JH QS KD AC"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Aces_can_start_a_straight_a_2_3_4_5_()
        Dim hands = {"4S 5H 4C 8D 4H", "4D AH 3S 2D 5C"}
        Dim actual = BestHands(hands)
        Dim expected = {"4D AH 3S 2D 5C"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Both_hands_with_a_straight_tie_goes_to_highest_ranked_card()
        Dim hands = {"4S 6C 7S 8D 5H", "5S 7H 8S 9D 6H"}
        Dim actual = BestHands(hands)
        Dim expected = {"5S 7H 8S 9D 6H"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Even_though_an_ace_is_usually_high_a_5_high_straight_is_the_lowest_scoring_straight()
        Dim hands = {"2H 3C 4D 5D 6H", "4S AH 3S 2D 5H"}
        Dim actual = BestHands(hands)
        Dim expected = {"2H 3C 4D 5D 6H"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Flush_beats_a_straight()
        Dim hands = {"4C 6H 7D 8D 5H", "2S 4S 5S 6S 7S"}
        Dim actual = BestHands(hands)
        Dim expected = {"2S 4S 5S 6S 7S"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Both_hands_have_a_flush_tie_goes_to_high_card_down_to_the_last_one_if_necessary()
        Dim hands = {"4H 7H 8H 9H 6H", "2S 4S 5S 6S 7S"}
        Dim actual = BestHands(hands)
        Dim expected = {"4H 7H 8H 9H 6H"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Full_house_beats_a_flush()
        Dim hands = {"3H 6H 7H 8H 5H", "4S 5H 4C 5D 4H"}
        Dim actual = BestHands(hands)
        Dim expected = {"4S 5H 4C 5D 4H"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Both_hands_have_a_full_house_tie_goes_to_highest_ranked_triplet()
        Dim hands = {"4H 4S 4D 9S 9D", "5H 5S 5D 8S 8D"}
        Dim actual = BestHands(hands)
        Dim expected = {"5H 5S 5D 8S 8D"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub With_multiple_decks_both_hands_have_a_full_house_with_the_same_triplet_tie_goes_to_the_pair()
        Dim hands = {"5H 5S 5D 9S 9D", "5H 5S 5D 8S 8D"}
        Dim actual = BestHands(hands)
        Dim expected = {"5H 5S 5D 9S 9D"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Four_of_a_kind_beats_a_full_house()
        Dim hands = {"4S 5H 4D 5D 4H", "3S 3H 2S 3D 3C"}
        Dim actual = BestHands(hands)
        Dim expected = {"3S 3H 2S 3D 3C"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Both_hands_have_four_of_a_kind_tie_goes_to_high_quad()
        Dim hands = {"2S 2H 2C 8D 2D", "4S 5H 5S 5D 5C"}
        Dim actual = BestHands(hands)
        Dim expected = {"4S 5H 5S 5D 5C"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub With_multiple_decks_both_hands_with_identical_four_of_a_kind_tie_determined_by_kicker()
        Dim hands = {"3S 3H 2S 3D 3C", "3S 3H 4S 3D 3C"}
        Dim actual = BestHands(hands)
        Dim expected = {"3S 3H 4S 3D 3C"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Straight_flush_beats_four_of_a_kind()
        Dim hands = {"4S 5H 5S 5D 5C", "7S 8S 9S 6S 10S"}
        Dim actual = BestHands(hands)
        Dim expected = {"7S 8S 9S 6S 10S"}
        Assert.Equal(expected, actual)
    End Sub

    <Fact>
    Public Sub Both_hands_have_a_straight_flush_tie_goes_to_highest_ranked_card()
        Dim hands = {"4H 6H 7H 8H 5H", "5S 7S 8S 9S 6S"}
        Dim actual = BestHands(hands)
        Dim expected = {"5S 7S 8S 9S 6S"}
        Assert.Equal(expected, actual)
    End Sub
End Class
