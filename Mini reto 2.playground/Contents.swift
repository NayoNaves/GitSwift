// Mini reto 2 Velocimetro Digital
// Por Bernardo Naves Mascorro

import UIKit

enum Velocidades : Int {
   
    case Apagado = 0
    
    case VelocidadBaja = 20
    
    case VelocidadMedia = 50
    
    case VelocidadAlta = 120
    
    init( velocidadInicial: Velocidades) {
        self = velocidadInicial}
}

class Auto {
    var velocidad:Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
       
        var progresion = ""
       
        switch velocidad {
        
        case  .Apagado:
            
            velocidad = .VelocidadBaja
            
            progresion = "Velocidad Baja"
        
        case .VelocidadBaja:
            
            velocidad = .VelocidadMedia
            
            progresion = "Velocidad Media"
        
        case .VelocidadMedia:
        
            velocidad = .VelocidadAlta
            
            progresion = "Velocidad Alta"
        
        case .VelocidadAlta:
            
            velocidad = .VelocidadMedia
            
            progresion = "Velocidad Media"
        }
        return (velocidad.rawValue,progresion)
    }
}

// Prueba de la clase

var auto = Auto()

for v in 1...20 {

    print(auto.cambioDeVelocidad())
}
