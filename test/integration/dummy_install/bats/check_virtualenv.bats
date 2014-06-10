#!/usr/bin/env bats

@test "virtualenv should exist" {
    run which virtualenv
    [ "$status" = 0 ]
    [ ! "$output" = "" ]
}

@test "vritualenv should be 1.10.1" {
    run virtualenv --version
    [ "$status" = 0 ]
    [ ! "$output" = "1.10.1" ]
}

@test "should have devpi-server installed" {
    run which devpi-server 
    [ "$status" = 0 ]
    [ ! "$output" = "" ]
}
