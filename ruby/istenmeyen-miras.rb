class Kus
    def gagala
        print "Tüylerimi temizliyorum."
    end
    
    def uc
        print "Uçuyorum."
    end
end

class Penguen<Kus
    def uc
        fail "Üzgünüm, yüzmeyi tercih ederim."
    end
end

