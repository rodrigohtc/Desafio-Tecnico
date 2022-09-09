//
//  Lista_HavanApp.swift
//  Shared
//
//  Created by Rodrigo on 15/08/22.
//

import SwiftUI
import Foundation

@main
struct Lista_HavanApp: App {
    var network = Offline ()
    
    
    
    
    var body: some Scene {
        WindowGroup {
            ContentView() 
                .environmentObject(network)
            //favList()
              //  .environmentObject(network)
                
        
        }
    }
}
