-- Chapter 4
import Data.Time.Clock.POSIX

main :: IO ()
main = getPOSIXTime >>= print
