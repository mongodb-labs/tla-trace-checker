------- MODULE Trace -------
EXTENDS Integers, Sequences

\***
\* Trace generated from replica set log files.
\* Each tuple is role, term, state, commit point,
\* oplog per node.
\***

Trace == <<
  <<
    <<"Leader", "Follower", "Follower">>,
    <<1, 1, 1>>,
    <<NULL, NULL, NULL>>,
    <<<< >>, << >>, << >>>>
  >>,
  <<
    <<"Follower", "Leader", "Follower">>,
    <<1, 2, 1>>,
    <<NULL, NULL, NULL>>,
    <<<< >>, << >>, << >>>>
  >>
>>
============================
