//
//  ListItemModel.swift
//  To do
//
//  Created by Traian on 08.08.2022.
//

import Foundation

struct ListItemModel: Identifiable {
    let title: String
    var isCompleted: Bool
    let id:String = UUID().uuidString
}
