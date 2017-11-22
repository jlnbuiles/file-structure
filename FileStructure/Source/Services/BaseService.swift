//
//  BaseService.swift
//  FileStructure
//
//  Created by Julian Builes on 11/21/17.
//  Copyright © 2017 Julian Builes. All rights reserved.
//

import Foundation

@objc protocol BaseService {
    @objc optional func GETByID(id: String)
    @objc optional func GETAll()
    @objc optional func POST(object: Any)
}
