#!/bin/sh
## task 1
awk -F: '{print $1}' ./passwd

## task 2
awk -F: '{print NR}' ./passwd

## task 3
awk -F: '
    # returns true if the text starts with the prefix
    # 
    #   startsWith("Hello, World!", "He")   # => true
    #   startsWith("Goodbye, Mars!", "He")  # => false
    #
    function startsWith(text, prefix) {
        return text ~ "^"prefix
    }

    !(startsWith($6, "/root") || startsWith($6, "/home")) {print}
' ./passwd

## task 4
awk -F: '
    function startsWith(text, prefix) {
        return text ~ "^"prefix
    }

    (startsWith($6, "/root") || startsWith($6, "/home")) &&
    startsWith($7, "/bin/bash") {print}
' ./passwd
