//
//  DocuSignPoCApp.swift
//  DocuSignPoC
//
//  Created by Keenan Chiasson on 7/28/23.
//

import SwiftUI

@main
struct DocuSignPoCApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
