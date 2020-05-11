------- MODULE array_ot -------
\***
\* Returns a pair of sequences
\* <<server history, client history>> containing
\* the tails of serverLog and clientLog[c]
\* starting immediately after their common point
\* in history of when they were last merged
\* together.
\***
Unmerged(c) ==
  Pair(SubSeq(serverLog,
              progress[c].serverVersion + 1,
              Len(serverLog)),
       SubSeq(clientLog[c],
              progress[c].clientVersion + 1,
              Len(clientLog[c])))

HaveUnmergedChangesOrAreConsistent ==
  \/ \E c \in Client :
        Unmerged(c) # Pair(<< >>, << >>)

  \/ \A c1, c2 \in Client :
        clientState[c1] = clientState[c2]
===============================
