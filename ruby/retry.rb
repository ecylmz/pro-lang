c = 0

for i in 0..4
    print i
    if i == 2 and c == 0
        c = 1
        print "\n"
        retry
    end
end
print "\n"

#012
#01234
