module Lib ( printResponse ) where

import System.Random (randomRIO)

pickRandom :: [a] -> IO a
pickRandom xs = fmap (xs !!) $ randomRIO (0, length xs - 1)

printResponse :: IO ()
printResponse = do
    x <- pickRandom [
        "Serious trouble will bypass you, innit?",
        "The greatest risk is not taking one, bruv.",
        "Keep your eye out for someone special. An assassin, a robot-prostitute or, perhaps, a poisonous snake.",
        "A very attractive person has a message for you. It says - 'don't ever bother me again, ya fucking cunt'.",
        "If winter comes, can spring be far behind? It, surely, can.",
        "Your ability for accomplishment will follow with success. Maybe."
        ]
    print x
