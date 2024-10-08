{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "diamond"
, dependencies =
  [ "arrays"
  , "console"
  , "datetime"
  , "effect"
  , "either"
  , "enums"
  , "foldable-traversable"
  , "integers"
  , "lists"
  , "maybe"
  , "ordered-collections"
  , "prelude"
  , "psci-support"
  , "strings"
  , "test-unit"
  , "tuples"
  , "unicode"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
