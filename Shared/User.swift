//
//  User.swift
//  Lista Havan
//
//  Created by Rodrigo on 15/08/22.
//

import Foundation

struct User: Identifiable, Decodable {
    var id: Int
    var brand: String?
    var name: String?
    var price: String?
    var description: String?
    var rating: Double?
    var category: String?
    var product_type: String?
    var price_sign: String?
    var isFav: Bool?
    
    
       // var currency: String
       // var image_link: URL
       // var product_link: URL
       // var website_link: URL
        //var description: String
       // var rating: Int
       // var categor: String
       // var product_type: String
      //  var tag1: String
      //  var tag2: String
      //  var created_at: String
     //   var updated_at: String
     //   var product_api_url:URL
     //   var api_featured_image:URL
    
    
}





