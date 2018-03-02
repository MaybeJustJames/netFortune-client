{-# LANGUAGE OverloadedStrings #-}

module Client (netClient) where

import qualified Data.ByteString.Lazy.Char8 as L8
import           Network.HTTP.Simple

netClient :: IO()
netClient = do
    response <- httpLBS "http://192.168.80.132:8080/fortune"
    putStrLn $ "The status code was: " ++
        show (getResponseStatusCode response)
    print $ getResponseHeader "Content-Type" response
    L8.putStrLn $ getResponseBody response