//
//  PointsCD+CoreDataProperties.swift
//  Greener
//
//  Created by Julia Wright on 2022-06-20.
//
//

import Foundation
import CoreData


extension PointsCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PointsCD> {
        return NSFetchRequest<PointsCD>(entityName: "PointsCD")
    }

    @NSManaged public var points: Int64

}

extension PointsCD : Identifiable {

}
