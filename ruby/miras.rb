class Memeli
    def nefes
        print "nefes al, nefes ver\n"
    end
end

class Kedi<Memeli
    def konus
        print "Miyauvv\n"
    end
end

pisi = Kedi.new

pisi.nefes
#nefes al ,nefes ver

pisi.konus
#Miyauvv
