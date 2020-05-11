------- MODULE array_ot -------
Transform_ArrayErase_ArraySet(eraseOp, setOp) ==
  CASE setOp.ndx = eraseOp.ndx ->
          \* Set the removed element.
          Pair(<<eraseOp>>, << >>)

    [] setOp.ndx > eraseOp.ndx ->
          \* Set an element after the position of
          \* the removed element.
          Pair(<<eraseOp>>,
               <<[setOp EXCEPT !.ndx = @ - 1]>>)

    [] OTHER -> Pair(<<eraseOp>>, <<setOp>>)
===============================
