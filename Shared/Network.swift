//
//  Network.swift
//  Lista Havan
//
//  Created by Rodrigo on 15/08/22.
//

import SwiftUI
import Foundation

class Network: ObservableObject {
    @Published var users: [User] = []

    func getUsers() {
        guard let url = URL(string: "https://makeup-api.herokuapp.com/api/v1/products.json") else { fatalError("Missing URL") }

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
print("1")
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                print("Request error: 2", error)
                return
            }

            guard let response = response as? HTTPURLResponse else { return }
            print(response.statusCode)
            
            if response.statusCode == 200 {
                print(response.statusCode)
                guard let data = data else { return }
                DispatchQueue.main.async {
                    do {
                        let decodedUsers = try JSONDecoder().decode([User].self, from: data)
                        self.users = decodedUsers
                        let teste = decodedUsers
                        print(teste[1])
                    } catch let error {
                        print("Error decoding: ", error)
                    }
                }
            }
        }

        dataTask.resume()
    }
}
