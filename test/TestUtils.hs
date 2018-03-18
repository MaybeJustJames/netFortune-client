{-# LANGUAGE OverloadedStrings #-}

module TestUtils ( shouldHaveResponse ) where

import qualified Data.Text               as T
import           Test.Hspec.Core.Spec
import qualified Test.Hspec.Snap         as T

-- | Asserts that the response (which should be Html) contains any text.
shouldHaveResponse :: T.TestResponse -> T.SnapHspecM b ()
shouldHaveResponse (T.Html _ body) =
    if T.length body > 0
    then T.setResult Success
    else T.setResult (Failure Nothing $ Reason $ T.unpack $ T.concat ["Body contains: ", body])
shouldHaveResponse x = T.setResult (Failure Nothing $ Reason (show x))
