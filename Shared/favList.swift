//
//  favList.swift
//  Lista Havan
//
//  Created by Rodrigo on 23/08/22.
//

import SwiftUI


struct favList: View {
    @EnvironmentObject var network: Offline
    
   
    
    var body: some View {
   
        
       
            

        
            List {
                
            
                ForEach(network.userFavList) { userfav in
                    
                        
                  
                        VStack(alignment: .leading) {
                            
                            //user.isFav=true
                           // print(user.isFav)
                           
                            
                            Text("Nome do produto:")
                                .bold()
                            Text(userfav.name ?? "Sem nome")
                            Text("Marca do produto:")
                                .bold()
                            Text(userfav.brand ?? "Sem marca")
                            Text("Preço do produto:")
                                .bold()
                            Text(userfav.price ?? "0")
                           
                            
                            
                            
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
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
           
            .navigationTitle(Text("Meus favoritos"))
           
        
        //.padding(.vertical)
       
        .onAppear {
            
           // network.favList()
                
        }
        .background(Color.white)
        
    
        
}
}
