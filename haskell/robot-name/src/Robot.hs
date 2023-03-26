module Robot (Robot, initialState, mkRobot, resetName, robotName) where

import Control.Monad.State (StateT, MonadIO (liftIO), get, put)
import Data.IORef (IORef, newIORef, readIORef, writeIORef )
import Data.Set (Set)
import qualified Data.Set as Set
import System.Random (randomRIO)

type Robot = IORef String
type RunState = Set String

initialState :: RunState
initialState = Set.empty

mkRobot :: StateT RunState IO Robot
mkRobot = do
  name  <- liftIO mkName
  cache <- get
  put $ Set.insert name cache
  if Set.member name cache then mkRobot
  else liftIO $ newIORef name

resetName :: Robot -> StateT RunState IO ()
resetName robot = do
  new <- mkRobot
  liftIO $ readIORef new >>= writeIORef robot

robotName :: Robot -> IO String
robotName = readIORef

mkName :: IO String
mkName = do
  c1 <- randomRIO ('A', 'Z')
  c2 <- randomRIO ('A', 'Z')
  i1 <- randomRIO ('0', '9')
  i2 <- randomRIO ('0', '9')
  i3 <- randomRIO ('0', '9')
  return [c1, c2, i1, i2, i3]
