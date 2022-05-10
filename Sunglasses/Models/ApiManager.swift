//
//  ApiManager.swift
//  Sunglasses
//
//  Created by Ahmed Yamany on 3/05/2022.
//

import Foundation

protocol ApiManagerDelegate {
    func didUpdateWeather(_ ApiManager: ApiManager, sunglass: Sunglass)
    func didFailWithError(error: Error)
}

struct ApiManager{
//    var delegate: ApiManagerDelegate?
    
    func FeatchRequest(){
        let urlString = "https://amazon24.p.rapidapi.com/api/product"

        _ = self.performRequest(with: urlString)
    }

    func performRequest(with urlString: String) -> Sunglass?{
        let parameters = [
            "categoryID":"aps","keyword":"sunglasses","country":"US","page":"1"
        ]
        let headers = [
            "X-RapidAPI-Host": "amazon24.p.rapidapi.com",
        "X-RapidAPI-Key": "b7e3eaced9msh17b5156aee2c3a9p1fce78jsn2907309474e0"
        ]

        var urlComponents = URLComponents(string: urlString)

        var queryItems = [URLQueryItem]()
        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        urlComponents?.queryItems = queryItems

        var request = URLRequest(url: (urlComponents?.url)!)
        request.httpMethod = "GET"

        for (key, value) in headers {
            request.setValue(value, forHTTPHeaderField: key)
        }

        let task = URLSession.shared.dataTask(with: request) { (data, response, error) -> Void in
            if error != nil {
//                self.delegate?.didFailWithError(error: error!)
                return
            }
            if let safeData = data {
                if let sunglasses = self.parseJSON(safeData) {
//                    self.delegate?.didUpdateWeather(self, sunglass: sunglass)
                    return sunglasses
                }
            }        }
        task.resume()
        return nil
        
    }
    
    
    func parseJSON(_ sunglass_data: Data) -> Sunglass? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(SunglassData.self, from: sunglass_data)
            let docs = decodedData.docs[0]
            let sunglass = Sunglass(name: docs.product_title, price: docs.app_sale_price, image: docs.product_main_image_url, description: docs.product_title)
            
            return sunglass
            
        } catch {
//            delegate?.didFailWithError(error: error)
            print(error)
            return nil
        }
    }
}
