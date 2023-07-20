//
//  CryptoData.swift
//  Crypto
//
//  Created by Oleg Zhovtanskyi on 20/07/2023.
//

import Foundation


struct CryptoData: Codable {
      let asset_id_base: String
      let asset_id_quote: String
      let rate: Double
}
