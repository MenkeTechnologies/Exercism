module TicketingReservation
  def tickets_available
      @tickets_available
  end

  def order_ticket?
    return false if tickets_available < 100
    @tickets_available -= 1
    true
  end

  def order_message(name : String)
      order_ticket? ? "#{name}, your purchase was successful, your ticket number is ##{tickets_available + 1}, and the game is played at the #{@stadium} stadium." : "#{name}, your purchase was unsuccessful, there are not enough tickets available."
  end
end

class TicketSystem
  def initialize(@tickets_available : Int32, @stadium : String) end
  include TicketingReservation
end
