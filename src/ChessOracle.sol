pragma solidity ^0.6.7;

import "../lib/ds-value/src/value.sol";

contract ChessOracle {
  /*
  This contract corresponds to one off-chain worker "oracle".

  A sketch of the general architecture is:

  Metamask invokes contract by calling a function:
  function makeBet(
    gid string,
    customer address,
    amount uint,
    on white
  ) public {
    // we first make a bet
    bet {
      payTo: address,
      amountBet: u128,
      resultExpected: w,
    }
    thebet = bet(customer, amount, on)
    // then we add it to the game it's betting on
    // Either like this (with list of such objects)
    game{
      id: gameID,
      bets: [bet1, bet2],
    }
    // Or with a mapping
    map(gameID => [bet])[gid].push(thebet)

    // If the game doesn't exist yet then we emit an event
    emit GameAdded(gid)

  }

  function payOut(
    gid string,
    result bool, // was the game played? (false means aborted)
    winner bool, // did white win?
  ) private {
    // We look at the bets and make the transfers.
    // This one should be triggered when the worker emits an event:
    // emit GameFinished result winner

  }



  */

}
