// Saludos a todos

var numeros = 0  ... 100

for n in numeros {
    
    if n >= 30 && n <= 40 {
        print ("\(n)" + " #VivaSwift")
    } else if n % 5 == 0 {
        print ("\(n)" + " #Bingo!!!")
    } else if n % 2 != 0 {
        print ("\(n)" + " #Impar")
    } else if n % 2 == 0 {
        print ("\(n)" + " #Par")

    }
    }

