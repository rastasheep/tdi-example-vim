#!/usr/bin/env bats

@test "vim binary is found in PATH" {
  run which vim
  [ "$status" -eq 0 ]
}

@test "vim version is 7.4" {
  run vim --version
  [ "$status" -eq 0 ]
  [[ "$output" =~ "VIM - Vi IMproved 7.4" ]]
}

@test "vim is compiled by user" {
  run vim --version
  [[ "$output" =~ "Compiled by vagrant@source-" ]]
}