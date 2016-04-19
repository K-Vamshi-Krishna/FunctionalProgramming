newtype Behavior a =
	Behavior {
		at :: Time -> a
	}

myName :: Behavior Text

myName `at` yesterday

