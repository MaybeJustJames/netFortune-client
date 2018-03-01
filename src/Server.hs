{-# LANGUAGE OverloadedStrings #-}

module Server ( serve ) where

import Control.Applicative
import Snap
import qualified System.Environment as E

app :: Snap ()
app = do
    writeText "hello, i am a haskell fortune predicta, what are you?"

serve :: IO ()
serve = do
    -- Serve the app, accessible at http://localhost:8080
    httpServe (setPort 8080 defaultConfig) app
