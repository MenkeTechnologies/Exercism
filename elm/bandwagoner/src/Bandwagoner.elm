module Bandwagoner exposing (..)

type alias Coach =
    {
    name: String,
    formerPlayer: Bool
    }
type alias Stats =
    {
    wins: Int,
    losses: Int
    }

type alias Team =
    { name : String,
    coach : Coach,
    stats : Stats
    }


replaceCoach newCoach team =
    { team | coach = newCoach }


createTeam name stats coach =
   Team name coach stats


rootForTeam team =
    team.stats.wins > team.stats.losses
