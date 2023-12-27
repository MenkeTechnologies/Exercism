def generate_seat_letters(number):
    return ('ABCD'[seat % 4] for seat in range(number))


def generate_seats(number):
    seats = range(number + 4 if number >= 13 else number)
    letters = generate_seat_letters(number)

    return (f'{row}{next(letters)}' for
            seat in seats if (row := seat // 4 + 1) != 13)


def assign_seats(passengers):
    return {passenger: seat for passenger, seat in
            zip(passengers, generate_seats(len(passengers)))}


def generate_codes(seat_numbers, flight_id):
    return (base.ljust(12, '0') for
            seat in seat_numbers if
            (base := f'{seat}{flight_id}'))
