//
//  Pelicula.swift
//  Lista
//
//  Created by Alumno ULSA on 24/04/23.
//

import Foundation

class Pelicula : Decodable {
    var nombre : String
    var director : String
    var anio : String
    
    init(nombre: String, director: String, anio: String) {
        self.nombre = nombre
        self.director = director
        self.anio = anio
    }
}
