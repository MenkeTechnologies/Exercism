module BankAccount

open System

type Account = Account of decimal option ref * Object

let mkBankAccount() = Account(ref None, obj)

let update (Account(balance, lockObj) as account) f =
    lock lockObj (fun () -> f balance)
    account

let openAccount account = update account (fun b -> b.Value <- Some 0.0m)

let closeAccount account = update account (fun b -> b.Value <- None)

let getBalance (Account(balance, _)) = balance.Value

let updateBalance change account = update account (fun b -> b.Value <- b.Value |> Option.map ((+) change))
