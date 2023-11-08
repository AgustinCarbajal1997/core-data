//
//  Pais+CoreDataProperties.swift
//  coreDataProject
//
//  Created by Agustin Carbajal on 07/11/2023.
//
//

import Foundation
import CoreData


extension Pais {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pais> {
        return NSFetchRequest<Pais>(entityName: "Pais")
    }

    @NSManaged public var nombre: String?

}

extension Pais : Identifiable {

}
