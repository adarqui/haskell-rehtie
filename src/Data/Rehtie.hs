{-# LANGUAGE ExplicitForAll    #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Data.Rehtie (
  rehtie
) where



import           Data.Either (Either, either)



-- | Takes an `Either` value and two functions, if the value is a `Left` the
-- | inner value is applied to the first function, if the value is a `Right`
-- | the inner value is applied to the second function.
-- |
-- | ``` purescript
-- | rehtie (Left x) f g == f x
-- | rehtie (Right y) f g == g y
-- | ```

rehtie :: forall a b c. Either a b -> (a -> c) -> (b -> c) -> c
rehtie lr f_ac f_bc = either f_ac f_bc lr
