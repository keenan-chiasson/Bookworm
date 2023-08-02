//
//  DataController.swift
//  DocuSignPoC
//
//  Created by Keenan Chiasson on 7/28/23.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "DocuSignPoC")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
