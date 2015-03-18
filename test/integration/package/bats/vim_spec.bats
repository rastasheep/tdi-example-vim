#!/usr/bin/env bats

@test "vim binary is found in PATH" {
  run which vim
  [ "$status" -eq 0 ]
}

@test "vim version is 7.4" {
  run vim --version
  [ "$status" -eq 0 ]
  [[ "$lines[0]" =~ "VIM - Vi IMproved 7.4" ]]
}