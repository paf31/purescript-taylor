module Test.Main where

import Prelude
import Control.Lazy (fix)
import Data.List (fromFoldable)
import Data.List.Lazy (take)
import Data.Taylor (coefficients, integrate, constant, d, x)
import Effect (Effect)
import Effect.Console (log, logShow)

main :: Effect Unit
main = do
  let series = constant 1.0 + x * x

  log "d(1 + x^2)/dx ="
  logShow (fromFoldable (take 5 (coefficients (d series))))

  log "∫ (1 + x^2) dx ="
  logShow (fromFoldable (take 5 (coefficients (integrate series))))

  let exp = fix \e -> constant 1.0 + integrate e

  log "1 / (1 + x^2) ="
  logShow (fromFoldable (take 5 (coefficients (one / series))))

  log "∫ dx / (1 + x^2) ="
  logShow (fromFoldable (take 5 (coefficients (integrate (one / series)))))
