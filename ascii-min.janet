# https://codegolf.stackexchange.com/questions/258739/string-with-the-smallest-sum-of-ascii-values/

#(fn [l] (((sort-by first (map (fn [x] [(sum x) x]) l)) 0) 1))

(fn[l](((sort-by first(map(fn[x][(sum x)x])l))0)1))

# test
(use "./test")
(def F(fn[l](((sort-by first(map(fn[x][(sum x)x])l))0)1)))

(def inputs [@["a" "b" "c"]
             @["hello" "world" "code"]
             @["aaa" "aa" ""]
             @["cat" "bat" "rat"]
             @["zab" "xyz" "abcd"]])

(def outputs ["a"
              "code"
              ""
              "bat"
              "zab"])

(T F inputs outputs)
