{-# LANGUAGE OverloadedStrings #-}

module Server ( serve ) where

import Data.Text
import Control.Monad.IO.Class -- liftIO lives here
import Snap
import Lib

app :: Snap ()
app = do
    x <- liftIO $ getFortunePrediction -- liftIO unwraps IO monad
    writeText . pack $ x -- writeText expects Text, x is a String, pack converts String to Text

serve :: IO ()
serve = do
    -- Serve the app, accessible at http://localhost:8080
    httpServe (setPort 8080 defaultConfig) app
