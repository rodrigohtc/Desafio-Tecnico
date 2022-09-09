//
//  ProductsDetailsView.swift
//  Lista Havan
//
//  Created by Rodrigo on 18/08/22.
//

import SwiftUI

struct ProductsDetailsView: View {
    @EnvironmentObject var network: Offline
    
    
    var userDetail: User
    
    var body: some View {
        //NavigationView{
            
        VStack(alignment: .leading)
                
            {
            Text("Nome do produto:")
                .bold()
            Text(userDetail.name ?? "Sem nome")
            Text("\nMarca do produto:")
                .bold()
            Text(userDetail.brand ?? "Sem nome")
            Text("\nPreço:")
                .bold()
            Text(userDetail.price ?? "Sem nome")
            Text("\nDescrição:")
                .bold()
            Text(userDetail.description ?? "Sem nome")
            
            Spacer()
            //Text(" \(userDetail.rating ) " ?? "Sem nome")
            
           // Text(userDetail.category ?? "Sem nome")
            
           // Text(userDetail.product_type ?? "Sem nome")
        }
            .padding()
           
   // }
        .navigationTitle(Text(userDetail.name ?? "Sem nome"))
       .toolbar {
            ToolbarItem {
                HStack {
                    
                    Button {
                        network.favList(userfav: userDetail)
                        
                    } label: {
                        Text("Add Favorite")
                    }
                                        NavigationLink(destination: favList()){ Text("Lista de Favoritos")}
                                                
                                                .simultaneousGesture(TapGesture().onEnded({
                                                    
                                                }))
                    
                    
                    
                    
                    
                }
            }
    ToolbarItem(placement: .navigationBarLeading) { Text("") }
        }
}
}
