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


}

