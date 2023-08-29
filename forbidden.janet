# https://codegolf.stackexchange.com/questions/119690/the-forbidden-built-in/
# Task
#
# Given a sequence of positive integers, whose length is divisible by 3, split
# them into groups of three, and print the last numbers of those groups where the
# second number is less than the first.
#
# Testcases
#
# Input               Output
# []                  []
# [1,2,3,4,5,6,7,8,9] []
# [2,1,3,5,4,6,8,7,9] [3,6,9]
# [3,1,4,1,5,9,2,6,5] [4]
# [100,99,123]        [123]
# [123,123,456]       []
# [456,123,789]       [789]

# (fn [l] (map last (filter (fn [x] (< (x 1) (x 0))) (partition 3 l))))

(fn[l](map last(filter(fn[x](<(x 1)(x 0)))(partition 3 l))))

# test
(use "./test")
(def F(fn[l](map last(filter(fn[x](<(x 1)(x 0)))(partition 3 l)))))
(def inputs [@[]
             @[1 2 3 4 5 6 7 8 9]
             @[2 1 3 5 4 6 8 7 9]
             @[3 1 4 1 5 9 2 6 5]
             @[100 99 123]
             @[123 123 456]
             @[456 123 789]])

(def outputs [@[]
              @[]
              @[3 6 9]
              @[4]
              @[123]
              @[]
              @[789]])

(T F inputs outputs)
