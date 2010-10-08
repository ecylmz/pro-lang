words = ['emre','can','yılmaz']

secret = words[rand(3)]

print "Tahmin et ? "
while guess = STDIN.gets
    guess.chop!
    if guess == secret
        print "Bildin!\n"
        break
    else
        print "Üzgünüm Kaybettin.\n"
    end
    print "Tahmin et ? "
end
print "Kelime ",secret , ".\n"
