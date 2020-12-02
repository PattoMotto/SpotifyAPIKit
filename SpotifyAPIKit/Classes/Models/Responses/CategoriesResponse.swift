//
//  CategoriesResponse.swift
//  Created by PattoMotto on 02/12/2020.
//  

import Foundation

struct CategoriesResponse: Codable {
    let categories: Paging<Category>
}
