//
//  Carro+CoreDataProperties.swift
//  coreDataTest
//
//  Created by Felipe Malta on 24/10/16.
//  Copyright © 2016 4tap. All rights reserved.
//

import Foundation
import CoreData


extension Carro {

    @nonobjc public class func fetchRequestCar() -> NSFetchRequest<Carro> {
        return NSFetchRequest<Carro>(entityName: "Carro");
    }

    @NSManaged public var cor: String?
    @NSManaged public var modelo: String?
    @NSManaged public var nome: String?

}
