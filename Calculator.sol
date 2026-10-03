// License
// SPDX-License-Identifier: LGPL-3.0-only

// Solidity compiler version
pragma solidity 0.8.24;

// Contract
contract Calculator {
    // Variables
    uint256 resultGlobal;
    // Modifiers

    // Events
    // Event declaration
    event AdditionResult(uint256 number1, uint256 number2, uint256 result);

    event SubtractionResult(uint256 number1, uint256 number2, uint256 result);

    //External functions
    // reserved keyword (function) + functionName + (parameters) + visibility + modifiers + return value
    function addition(uint256 value1_, uint256 value2_) public returns(uint256 result_) {
        // Bdoy function
        result_ = value1_ + value2_;
        // Broadcast of the event
        emit AdditionResult(value1_, value2_,result_);
    }

    function subtraction(uint256 value1_, uint256 value2_) external returns(uint256 result_) {
        // Body function
        result_ = subtractionInternal(value1_, value2_);

        // Broadcast Event
        emit SubtractionResult(value1_, value2_, result_);
    }

    //Internal functions
    function subtractionInternal(uint256 valueInternal1_, uint256 valueInternal2_) internal pure returns(uint256 resultInternal_) {
        resultInternal_ = valueInternal1_ - valueInternal2_;
    }

}