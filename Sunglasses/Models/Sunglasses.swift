//
//  Sunglasses.swift
//  Sunglasses
//
//  Created by Ahmed Yamany on 3/5/2022.
//

import Foundation
import UIKit



struct Sunglass {
    let name: String
    let price: String
    let image: String
    let description: String
}


let apiManager = ApiManager()
//apiManager.delegate = self

let inventory: [Sunglass] = [
//    apiManager.FeatchRequest(),
//    Sunglass(name: "Elliot Black w/Gold", price: 39.99, image: UIImage(named: "ElliotBlack")!, description: "The Elliot is a modern take on the iconic 1950’s Browline style. Crafted from premium acetate and sporting sleek arms, silver accents and a retro monel bridge, this frame exudes a classic cool."),
//    Sunglass(name: "Ottoto Bellona Tortoise", price: 59.99, image: UIImage(named: "OttotoBellona")!, description: "The Bellona is a stylish round frame that doesn't play by the rules. Crafted from premium acetate, it features a decorated monel bridge, elegant arms and adjustable silicone nose pads for a comfortable fit."),
//    Sunglass(name: "Ray-Ban Clubmaster", price: 99.99, image: UIImage(named: "Ray-BanClubmaster ")!, description: "The Ray-Ban Clubmaster is the iconic, semi-rimless frame that turned Ray-Ban into the brand it is today. Boasting its signature metal accents and supported by its classic sturdy arms, this frame will turn you into a master of any club."),
//    Sunglass(name: "Amelia E. Hepburn", price: 29.99, image: UIImage(named: "AmeliaHepburn")!, description: "The Amelia E. Hepburn is a modern cat-eye sunglasses frame that is impossible to ignore. Sporting elegant lines, sleek arms and adjustable silicone nose pads, it's a seamless mix of form and function."),
//    Sunglass(name: "Ottoto Leonardo", price: 49.99, image: UIImage(named: "OttotoLeonardo")!, description: "The Ottoto Leonardo is a full-rimmed square aviator frame crafted from lightweight monel. Sporting a stylish double bridge, elegant arms and adjustable silicone nose pads for a seamless mix of form and function."),
//    Sunglass(name: "Ottoto Andria", price: 69.99, image: UIImage(named: "OttotoAndria")!, description: "The Ottoto Andria is a well-rounded frame that exudes a mix of control and sophistication. Sporting rubber-plated arms and adjustable silicone nose-pads for added comfort, the lightweight titanium frame is surprisingly sturdy despite its appearance."),
//    Sunglass(name: "Revel Nico", price: 79.99, image: UIImage(named: "RevelNico")!, description: "The Revel Nico is a wrap-around sunglasses frame effortlessly combining form and function. Crafted from durable acetate, it features peripheral protection for the eyes, rubberized paddings for comfort, and a polished hue for style."),
//    Sunglass(name: "Vogue", price: 39.99, image: UIImage(named: "Vogue")!, description: "The Vogue VO5051S is a modern full-rimmed frame with undeniable presence. Sporting a saddle bridge, rich hue and molded nose pads, it's a seamless mix of style and comfort."),
//    Sunglass(name: "Muse Ivor", price: 149.99, image: UIImage(named: "MuseIvor")!, description: "The Muse Ivor is a effortlessly cool square sunglasses frame. Crafted from premium acetate, it features a keyhole bridge, sleek arms and molded nose pads for a snug fit."),
//    Sunglass(name: "Coach", price: 49.99, image: UIImage(named: "Coach")!, description: "The Coach HC8179 is an oversized square frame that exudes 60's chic. Crafted from premium acetate, it features sleek arms, smart metal accents for a pinch of luxury and fixed nose pads for comfort."),
//    Sunglass(name: "Elliot Black w/Gold", price: 39.99, image: UIImage(named: "ElliotBlack")!, description: "The Elliot is a modern take on the iconic 1950’s Browline style. Crafted from premium acetate and sporting sleek arms, silver accents and a retro monel bridge, this frame exudes a classic cool."),
//    Sunglass(name: "Ottoto Bellona Tortoise", price: 59.99, image: UIImage(named: "OttotoBellona")!, description: "The Bellona is a stylish round frame that doesn't play by the rules. Crafted from premium acetate, it features a decorated monel bridge, elegant arms and adjustable silicone nose pads for a comfortable fit."),
//    Sunglass(name: "Ray-Ban Clubmaster", price: 99.99, image: UIImage(named: "Ray-BanClubmaster ")!, description: "The Ray-Ban Clubmaster is the iconic, semi-rimless frame that turned Ray-Ban into the brand it is today. Boasting its signature metal accents and supported by its classic sturdy arms, this frame will turn you into a master of any club."),
//    Sunglass(name: "Amelia E. Hepburn", price: 29.99, image: UIImage(named: "AmeliaHepburn")!, description: "The Amelia E. Hepburn is a modern cat-eye sunglasses frame that is impossible to ignore. Sporting elegant lines, sleek arms and adjustable silicone nose pads, it's a seamless mix of form and function."),
//    Sunglass(name: "Elliot Black w/Gold", price: 39.99, image: UIImage(named: "ElliotBlack")!, description: "The Elliot is a modern take on the iconic 1950’s Browline style. Crafted from premium acetate and sporting sleek arms, silver accents and a retro monel bridge, this frame exudes a classic cool."),
//    Sunglass(name: "Ottoto Bellona Tortoise", price: 59.99, image: UIImage(named: "OttotoBellona")!, description: "The Bellona is a stylish round frame that doesn't play by the rules. Crafted from premium acetate, it features a decorated monel bridge, elegant arms and adjustable silicone nose pads for a comfortable fit."),
//    Sunglass(name: "Ray-Ban Clubmaster", price: 99.99, image: UIImage(named: "Ray-BanClubmaster ")!, description: "The Ray-Ban Clubmaster is the iconic, semi-rimless frame that turned Ray-Ban into the brand it is today. Boasting its signature metal accents and supported by its classic sturdy arms, this frame will turn you into a master of any club."),
//    Sunglass(name: "Amelia E. Hepburn", price: 29.99, image: UIImage(named: "AmeliaHepburn")!, description: "The Amelia E. Hepburn is a modern cat-eye sunglasses frame that is impossible to ignore. Sporting elegant lines, sleek arms and adjustable silicone nose pads, it's a seamless mix of form and function."),
//    Sunglass(name: "Elliot Black w/Gold", price: 39.99, image: UIImage(named: "ElliotBlack")!, description: "The Elliot is a modern take on the iconic 1950’s Browline style. Crafted from premium acetate and sporting sleek arms, silver accents and a retro monel bridge, this frame exudes a classic cool."),
//    Sunglass(name: "Ottoto Bellona Tortoise", price: 59.99, image: UIImage(named: "OttotoBellona")!, description: "The Bellona is a stylish round frame that doesn't play by the rules. Crafted from premium acetate, it features a decorated monel bridge, elegant arms and adjustable silicone nose pads for a comfortable fit."),
//    Sunglass(name: "Ray-Ban Clubmaster", price: 99.99, image: UIImage(named: "Ray-BanClubmaster ")!, description: "The Ray-Ban Clubmaster is the iconic, semi-rimless frame that turned Ray-Ban into the brand it is today. Boasting its signature metal accents and supported by its classic sturdy arms, this frame will turn you into a master of any club."),
//    Sunglass(name: "Amelia E. Hepburn", price: 29.99, image: UIImage(named: "AmeliaHepburn")!, description: "The Amelia E. Hepburn is a modern cat-eye sunglasses frame that is impossible to ignore. Sporting elegant lines, sleek arms and adjustable silicone nose pads, it's a seamless mix of form and function."),
//
]
