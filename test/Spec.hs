{-# LANGUAGE OverloadedStrings #-}

import           Server
import           Snap
import           Test.Hspec
import qualified Test.Hspec.Snap as T

-- | Tests
tests :: Spec
tests = do
    T.snap (route routes) appInit $ do
        describe "Application" $ do
            it "Has /fortune route" $ do
                T.get "/fortune" >>= T.should200
            it "Has response" $ do
                T.get "/fortune" >>= T.shouldHaveText "Behold!"

main :: IO()
main = do
    hspec tests