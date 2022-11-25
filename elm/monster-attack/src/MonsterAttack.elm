module MonsterAttack exposing (..)
import String

type alias MonsterDamage =
    String

attackWithSword1 monsterDamage strength =
    monsterDamage ++ "Attacked with sword of strength " ++ String.fromInt strength ++ "."

attackWithClaw1 monsterDamage strength =
    monsterDamage ++ "Attacked with claw of strength " ++ String.fromInt strength ++ "."

attack1 monsterDamage =
    attackWithSword1 (attackWithClaw1 (attackWithClaw1 (attackWithSword1 monsterDamage 5) 1) 1) 5

attackWithSword2 strength monsterDamage =
    monsterDamage ++ "Attacked with sword of strength " ++ String.fromInt strength ++ "."

attackWithClaw2 strength monsterDamage =
    monsterDamage ++ "Attacked with claw of strength " ++ String.fromInt strength ++ "."

attack2 monsterDamage =
    monsterDamage
    |> attackWithSword2 5
    |> attackWithClaw2 1
    |> attackWithClaw2 1
    |> attackWithSword2 5

attack3 =
    attackWithSword2 5 >> attackWithClaw2 1 >> attackWithClaw2 1 >> attackWithSword2 5

