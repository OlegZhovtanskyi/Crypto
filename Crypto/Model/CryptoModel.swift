//
//  CryptoModel.swift
//  Crypto
//
//  Created by Oleg Zhovtanskyi on 15/07/2023.
//

import UIKit

struct CryptoModel {
    let url = "https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=859E15F9-5704-4362-809B-0CCE5EEE8A44"
    

    func getData() async throws -> CryptoData {
        guard let strUrl = URL(string: url) else {throw CryptoError.invalidUrl}

        let (data, responce) = try await URLSession.shared.data(from: strUrl)
        
        guard let responce = responce as? HTTPURLResponse, responce.statusCode == 200 else {
            throw CryptoError.invalidResponce
        }
        
        do {
            let decoder = JSONDecoder()
            let decodedData =  try decoder.decode(CryptoData.self, from: data)
            let cryptoCurrency = decodedData.asset_id_base
            let valutCyrrency = decodedData.asset_id_quote
            let rate = decodedData.rate
            let crypto = CryptoData(asset_id_base: cryptoCurrency, asset_id_quote: valutCyrrency, rate: rate)
            return crypto
        } catch {
            throw CryptoError.invalidData
        }
    }
}

enum CryptoError: Error {
    case invalidUrl
    case invalidResponce
    case invalidData
}



