// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../lib/ds-value/src/value.sol";

contract ChessBets is DSValue {
    address internal chessOracleAddr = address(0);

    mapping(address => bytes32[]) internal userToBets;
    mapping(bytes32 => Bet[]) internal matchToBets;
    mapping(bytes32 => bool) internal matchPaidOut;

    uint internal minimumBet = 1000000000000;

    struct Bet {
        address user;
        bytes32 matchId;
        uint amount;
        uint8 chosenWinner;
    }
}
