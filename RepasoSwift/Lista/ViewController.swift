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
        celda.lblTitulo.text = peliculas[indexPath.row].nombre
        celda.lblAño.text = peliculas[indexPath.row].anio
        celda.lblDirector.text = peliculas[indexPath.row].director
        
        return celda
    }
    
    //Llamamos al modelo
    @IBOutlet weak var tvPeliculas: UITableView!
    var peliculas : [Pelicula] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://127.0.0.1:8000/api/peliculas")!
        var solicitud = URLRequest(url: url)
        solicitud.setValue("application/json", forHTTPHeaderField: "Content-Type")
        solicitud.setValue("application/json", forHTTPHeaderField: "Accept")
        solicitud.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: url){
            data, response, error in
            if let data = data {
                if let peliculas = try?
                    JSONDecoder().decode([Pelicula].self,from: data){
                    self.peliculas = peliculas
                    DispatchQueue.global(qos: .background).async {
                        DispatchQueue.main.async {
                            self.tvPeliculas.reloadData()
                        }
                    }
                }
            }
        }
        task.resume()
    }
}
