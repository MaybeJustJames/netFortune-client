module Lib ( getFortunePrediction ) where

import System.Random (randomRIO)

pickRandom :: [a] -> IO a
pickRandom xs = fmap (xs !!) $ randomRIO (0, length xs - 1)

getFortunePrediction :: IO String
getFortunePrediction = do
    x <- pickRandom [
        "Serious trouble will bypass you, innit?",
        "The greatest risk is not taking one, bruv.",
        "Keep your eye out for someone special. An assassin, a robot-prostitute from the future or, perhaps, a poisonous snake.",
        "A very attractive person has a message for you. It says - 'don't ever bother me again, ya fucking cunt'.",
        "If winter comes, can spring be far behind? It, surely, can.",
        "Your ability for accomplishment will follow with success. Maybe.",
        "Things may seem much worse than they are. Nice!",
        "Don't wait for success to come - go find it! It should be in the woods somewhere.",
        "Face the truth with dignity, toughen up, ya wee prick!",
        "You excel at pleasing others. Please yourself also, please. Get it?",
        "Everyone agrees you are the best. Everyone in that mental hospital!",
        "The best way to create the future is to predict it. No, wait, that makes no sense. Whatever.",
        "Love is right around the corner. Not going to tell you which corner, though.",
        "You will be hungry again in one hour. Just saying.",
        "To be idle is to be foolish. Unless you are Buddha. Then it is pretty fucking smart.",
        "You will die alone and poorly dressed. Everyone dies alone, though. Try to be nicely dressed at least, ya bastard!",
        "You have got some shit on your face.",
        "All predictions are wrong. A logical puzzle for you, mate.",
        "Only listen to these predictions; disregard all other prediction generating units.",
        "Learn how to do something new today. Every day, actually! Or I will find you and you will have to learn dodging bullets.",
        "To achieve wisdom, you must first desire it. Unless you are wise as fuck by default.",
        "Tomorrow is another day. Unless you are in a time loop.",
        "Show everyone what you can do. Show them fuckers how it is done!",
        "Your home will be filled with peace and harmony. Jah bless!",
        "Hello, mother fucker.",
        "Somebody appreciates the unique you. But you are the same you. Interesting.",
        "Your smile lights up someone else's day. Just take your prison guard, for instance!",
        "Stop letting other people stand in your way. Those cunts, eh!",
        "True happiness makes us wise. Not sure about that one. It is the opposite, actually, isn't it??",
        "Pay attention to your family. Don't take them for granted. For real.",
        "Happiness may be right under your nose. Have you checked your lips?",
        "Move quickly. Now is the time to make progress. Be a quick-mover.",
        "Admire mousecat! Mousecat - he chases himself..",
        "A healthy body will benefit you for life. Healthy body-movin' as well!",
        "Avoid negative shit.",
        "Fame and fortune lie ahead. Of me. Don't know about you!",
        "You think it’s a secret, but they know. THEY KNOW.",
        "Pursue your dreams with vigor. And vinegar!"
        ]
    return x