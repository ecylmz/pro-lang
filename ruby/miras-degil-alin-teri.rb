class Insan
    def tanimla
        print "Ben bir insanim.\n"
    end

    def tren_bileti(yas)
        if yas < 12
            print "Indirimli ucret.\n";
        else
            print "Normal ucret.\n";
        end
    end
end

Insan.new.tanimla
#Ben bir insanim.

class Ogrenci1<Insan
    def tanimla
        print "Ben bir ogrenciyim.\n"
    end
end

Ogrenci1.new.tanimla
#Ben bir Ogrenciyim


#Miras + Alın teri :)

class Ogrenci2<Insan
    def tanimla
        super
        print "Ben bir ogrenciyim,aynı zamanda.\n"
    end
end

Ogrenci2.new.tanimla
#Ben bir insanim.
#Ben bir ogrenciyim, aynı zamanda.

