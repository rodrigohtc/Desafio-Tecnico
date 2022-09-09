//
//  ContentView.swift
//  Shared
//
//  Created by Rodrigo on 15/08/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var network: Offline
    var count: Int = 0
    //@State public var order = 1
    
    var body: some View {
   
        
        NavigationView {
            

        
            List {
                
            
                ForEach(network.users) { user in
                    
                        
                  
                        VStack(alignment: .leading) {
                            
                            //user.isFav=true
                           // print(user.isFav)
                           
                            
                            Text("Nome do produto:")
                                .bold()
                            Text(user.name ?? "Sem nome")
                            Text("Marca do produto:")
                                .bold()
                            Text(user.brand ?? "Sem marca")
                            Text("Preço do produto:")
                                .bold()
                            Text(user.price ?? "Sem preço")
                            
                            NavigationLink(destination: ProductsDetailsView(userDetail: user)) {
                                                                                                      
                                                             Text("Detalhes")
                                    .bold()
                                                          }
                             
                            
                            
                            
                            
                            
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .padding()
                        .background(Color(#colorLiteral(red: 0.6667672396, green: 0.7527905703, blue: 1, alpha: 0.2662717301)))
                        .cornerRadius(20)
                    
                           
                            
                           // if user.price != nil{
                            //Text("R$" + user.price!.lowercased())
                           // }
                           // else{
                            //    Text("Sem estoque")
                           // }
                           
                      
                    
                   
                
            }
                
                .listRowBackground(Color(#colorLiteral(red: 0.6667672396, green: 0.7527905703, blue: 1, alpha: 0.00000001)))

        }
           
            .navigationTitle(Text("Lista de Produtos"))
            .toolbar {
                 ToolbarItem {
                     HStack {
                         Text("Ordenar:")
                         Button {
                             network.order =  4
                             print(network.order)
                             network.getUsers()
                             
                         } label: {
                             Text("A-Z")
                         }
                         Button {
                             network.order =  5
                             print(network.order)
                             network.getUsers()
                         } label: {
                             Text("Z-A")
                         }
                         Button {
                             network.order =  2
                             print(network.order)
                             network.getUsers()
                         } label: {
                             Text("R$ Decrescente")
                         }
                         Button {
                             network.order =  3
                             print(network.order)
                             network.getUsers()
                         } label: {
                             Text("R$ Crescente")
                         }
                         
                         

                     }
                     
                 }
         ToolbarItem(placement: .navigationBarLeading) { Text("") }
             }
        }
        
        //.padding(.vertical)
       
        .onAppear {
            
            network.getUsers()
                
        }
        .background(Color.white)
        
    }
        
}

