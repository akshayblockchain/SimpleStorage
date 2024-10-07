// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {Test, console} from "forge-std/Test.sol";
import {DeploySimpleStorage} from "../script/DeploySimpleStorage.s.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;

    function setUp() external {
        DeploySimpleStorage deployer = new DeploySimpleStorage();
        simpleStorage = deployer.run();
    }

    function testNumber() external {
        simpleStorage.setNumber(5);
        assert(simpleStorage.myNumber() == 5);
    }

    function testPersonDetails() external {
        simpleStorage.addPerson(7, "Thala");
        // console.log(simpleStorage.personsDetails(7));
        assert(simpleStorage.personsDetails("Thala") == 7);
    }
}
