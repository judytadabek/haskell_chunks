add (a, b, c, d) = a+b+c+d :: Int

--greatest (["x"], ["y"])= ["x"] `max` ["y"]

--max length ["a"] ["b"] = ["a"] `max` ["b"]

--largest ["x", "y"] = ["x"] `max` ["y"]

--largest (["a"], ["b"]) = if (length ["a"] > length ["b"]) then ["a"] else ["b"]

largest ["a"] ["b"] = (length ["a"]) `max` (length ["b"])
