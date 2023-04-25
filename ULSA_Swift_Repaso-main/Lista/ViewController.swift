//
//  ViewController.swift
//  Lista
//
//  Created by Alumno ULSA on 24/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Cantidad de subtitulos
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Define altura
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }
    
    //Cantidad de peliculas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as! CeldaPeliculaController
        celda.lblTitulo.text = peliculas[indexPath.row].titulo
        celda.lblAño.text = peliculas[indexPath.row].año
        celda.lblDirector.text = peliculas[indexPath.row].director
        
        return celda
    }
    
    //Llamamos al modelo
    var peliculas : [Pelicula] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Llenamos con datos
        peliculas.append(Pelicula(titulo: "Titanic", director: "James Cameron", año: "1999"))
        peliculas.append(Pelicula(titulo: "Mario Bros", director: "No se", año: "2023"))
        peliculas.append(Pelicula(titulo: "Pelicula 3", director: "No se", año: "2000"))
    }
}
