// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

// You must cast integers to enums to get the corresponding enum value.
// 

contract ExampleEnum {
    /*
        This exercise assumes you understand how Enum works.
        1. The `isWeekend` function returns a bool when called.
    */

    enum DayOfWeek {
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }

    function isWeekend(uint256 index) public pure returns (bool) {
        require(index < 7, "Invalid Index");
        DayOfWeek day = DayOfWeek(index);
        if (day == DayOfWeek.Saturday || day == DayOfWeek.Sunday) {
            return true;
        }
        return false;
    }
}
