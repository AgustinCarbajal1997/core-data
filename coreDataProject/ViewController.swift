//
//  ViewController.swift
//  coreDataProject
//
//  Created by Agustin Carbajal on 07/11/2023.
//

import UIKit
import CoreData
class ViewController: UIViewController {

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    private var myCountries:[Pais]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // recuperar datos
        recuperarDatos()
    }
    
    
    func recuperarDatos(){
        do {
            self.myCountries = try context.fetch(Pais.fetchRequest())
            DispatchQueue.main.async {
                //self.tableView.reloadData()
            }
        } catch {
            print("Error recuperando datos")
        }
    }
    
    
    @IBAction func addAction(_ sender: Any) {
        let alert = UIAlertController(title: "Agregar Pais", message: "Añade pais", preferredStyle: .alert)
        alert.addTextField()
        let botonAlerta = UIAlertAction(title: "Añadir", style: .default)
        
        let textField = alert.textFields![0]
        print(textField)
        // crear objeto pais
        let nuevoPais = Pais(context: self.context)
        nuevoPais.nombre = textField.text
        
        try! self.context.save()
        
        recuperarDatos()
        
        alert.addAction(botonAlerta)
        self.present(alert, animated: true)
    }
    

}

