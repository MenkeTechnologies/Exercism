module TicketPlease exposing (..)
import TicketPleaseSupport exposing (Status(..), Ticket(..), User(..))

devNames = [ "Alice", "Bob", "Charlie" ]

emptyComment ( _, comment ) = String.isEmpty comment

numberOfCreatorComments (Ticket ticket) =
    let ( creator, _ ) = ticket.createdBy in
    ticket.comments |> List.filter (\( user, _ ) -> user == creator)
        |> List.filter (emptyComment >> not)
        |> List.length

assignedToDevTeam (Ticket ticket) = ticket.assignedTo |> Maybe.map (\user -> isDev user) |> Maybe.withDefault False

assignTicketTo user (Ticket ticket) = case ticket.status of
        New -> Ticket { ticket | status = InProgress, assignedTo = Just user }
        Archived -> Ticket ticket
        _ -> Ticket { ticket | assignedTo = Just user }

isDev user = devNames |> List.map (\name -> User name) |> List.member user
