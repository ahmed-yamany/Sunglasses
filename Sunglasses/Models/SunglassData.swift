//
//  SunglassData.swift
//  Sunglasses
//
//  Created by Ahmed Yamany on 3/05/2022.
//

import Foundation

struct SunglassData: Codable{
    let docs: [Docs]

}

struct Docs: Codable{
    let product_title: String
    let product_main_image_url: String
    let app_sale_price: String
}
