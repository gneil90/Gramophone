//
//  APIPagination.swift
//  Gramophone
//
//  Created by Nail Galiaskarov on 9/25/19.
//  Copyright © 2019 Jared Verdi. All rights reserved.
//

import Foundation
import protocol Decodable.Decodable
import Decodable

public struct APIPagination {
  public let nextUrl: String?
  public let nextMaxId: String?
  
  public init(nextUrl: String?, nextMaxId: String?) {
    self.nextUrl = nextUrl
    self.nextMaxId = nextMaxId
  }
}

// MARK: Decodable

extension APIPagination: Decodable {
  public static func decode(_ json: Any) throws -> APIPagination {
    return APIPagination(
      nextUrl: try? json => "next_url",
      nextMaxId: try? json => "next_max_id"
    )
  }
}
