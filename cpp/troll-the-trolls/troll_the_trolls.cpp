namespace hellmath {
    enum AccountStatus {
        troll, guest, user, mod
    };
    enum Action {
        read, write, remove
    };

    bool display_post(AccountStatus poster, AccountStatus viewer) {
        return poster == viewer || poster != 0;
    }

    bool permission_check(Action action, AccountStatus account_status) {
        return account_status == 3 || (account_status == 1 && action == 0) ||
               ((account_status == 0 || account_status == 2) && action != 2);
    }

    bool valid_player_combination(AccountStatus player1, AccountStatus player2) {
        return player1 != 1 && player2 != 1 && ((player1 == 0 && player2 == 0) || (player1 != 0 && player2 != 0));
    }

    bool has_priority(AccountStatus account1, AccountStatus account2) {
        return account1 > account2;
    }
}
