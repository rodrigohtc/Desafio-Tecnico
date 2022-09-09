//
//  Offline.swift
//  Lista Havan
//
//  Created by Rodrigo on 18/08/22.
//

import SwiftUI
import Foundation

class Offline: ObservableObject {
    

    @Published var users: [User] = []
    
    @Published var order = 10000000
    @Published var userFavList: [User] = []
    
    func getUsers() {
    
       // var isFav: Int
        
        
       

        
            var data: Data

            guard let file = Bundle.main.url(forResource: "products.json", withExtension: nil)
                else {
                    fatalError("Couldn't find in main bundle.")
            }

            do {
                data = try Data(contentsOf: file)
            } catch {
                fatalError("Couldn't load  from main bundle:\n\(error)")
            }

        do {
            var decodedUsers = try JSONDecoder().decode([User].self, from: data)
            self.users = decodedUsers
            
                   } catch let error {
            print("Error decoding: ", error)
        }
        
        if order == 2 {
        users = users.sorted{ $0.price ?? "0" > $1.price ?? "0" }
            print(order) }
        if order == 3 {
        users = users.sorted{ $0.price ?? "0" < $1.price ?? "0" }
            print(order) }
        if order == 4 {
        users = users.sorted{ $0.name ?? "0" < $1.name ?? "0" }
            print(order) }
        if order == 5 {
        users = users.sorted{ $0.name ?? "0" > $1.name ?? "0" }
            print(order) }
        
      
    
      
       
    
    
    
       
        
        
        
        
        
        
    }
    
    
    func favList (userfav: User) {
        
        
            
           
        self.userFavList.append(userfav)
        print(userFavList)
            
        
    }
   
    
    
   
    
    }
    
    
    
    
    
    
    
    

