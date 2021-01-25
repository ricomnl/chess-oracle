pragma solidity ^0.6.7;

import "ds-test/test.sol";

import "./ChessOracle.sol";

contract ChessOracleTest is DSTest {
    ChessOracle oracle;

    function setUp() public {
        oracle = new ChessOracle();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
