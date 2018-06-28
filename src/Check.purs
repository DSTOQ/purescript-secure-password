module Check (
    Check
  , Result
  , Results
  , Level(..)
) where

import Prelude (class Show, class Eq)
import Data.List (List)
import Data.Maybe (Maybe)

data Level = Highlight | Insecure | Warning | Achievement | Notice
derive instance eqLevel :: Eq Level

instance showLevel :: Show Level where
    show Highlight = "Highlight"
    show Insecure = "Insecure"
    show Warning = "Warning"
    show Achievement = "Achievement"
    show Notice = "Notice"

type Result = {
    id :: String
  , level :: Level
  , value :: Maybe String
}

type Results = List (Maybe Result)

type Check = String -> Maybe Result