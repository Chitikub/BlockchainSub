// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract FindMinMaxValue{
    uint8 public maxValue_uint8 = type(uint8).max;
    uint16 public maxValue_uint16 = type(uint16).max;
    uint32 public maxValue_uint32 = type(uint32).max;
    uint256 public maxValue_uint256 = type(uint256).max;

    int8 public maxValue_int8 = type(int8).max;
    int16 public maxValue_int16 = type(int16).max;
    int32 public maxValue_int32 = type(int32).max;
    int256 public maxValue_int256 = type(int256).max;

    uint8 public minValue_uint8 = type(uint8).min;
    uint16 public minValue_uint16 = type(uint16).min;
    uint32 public minValue_uint32 = type(uint32).min;
    uint256 public minValue_uint256 = type(uint256).min;

    int8 public minValue_int8 = type(int8).min;
    int16 public minValue_int16 = type(int16).min;
    int32 public minValue_int32 = type(int32).min;
    int256 public minValue_int256 = type(int256).min;
}