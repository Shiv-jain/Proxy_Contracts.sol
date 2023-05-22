# Proxy_Contracts.sol

It contains two contracts "castVote" and  "castVoteProxy" . "castVoteProxy" is the proxy contract here which makes the delegatecalls to "castVote" and "castVote" gets executed using the resources i.e. memory , storage and ether of contract "castVoteProxy".
