{-# LANGUAGE OverloadedStrings #-}

module Server ( serve ) where

import           Control.Monad.IO.Class
import           Data.ByteString
import           Data.Text
import           Lib
import           Snap
import           Test.Hspec

-- | Application database pool, state, etc. can be added here
data App = App
  {
  }

-- | Application routes
routes :: [(ByteString, Handler App App ())]
routes = [("/fortune", method GET $ predictFortune)]

-- | Fortune route handler
predictFortune :: Handler App App ()
predictFortune = do
     x <- liftIO $ getFortunePrediction -- liftIO unwraps IO monad
     writeText . Data.Text.pack $ x -- writeText expects Text, x is a String, pack converts String to Text

-- | Initialisation
appInit :: SnapletInit App App
appInit = makeSnaplet "microservice" "Fortune microservice" Nothing $ do
    addRoutes routes
    return $ App

serve :: IO ()
serve = do
    -- Serve the app
    serveSnaplet (setPort 8080 defaultConfig) appInit
