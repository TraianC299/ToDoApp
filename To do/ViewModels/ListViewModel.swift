//
//  ListViewModel.swift
//  To do
//
//  Created by Traian on 08.08.2022.
//

import Foundation


class ListViewModel: ObservableObject{
    @Published var items: [ListItemModel] = []
    init(){
        getItems()
    }
    
    func deleteItem(indexSet:IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from:IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title:String){
        items.append(ListItemModel(title:title, isCompleted: false))
    }
    
    func getItems(){
        let newItems = [
            ListItemModel(title:"To do 1", isCompleted: false),
            ListItemModel(title:"To do 2", isCompleted: true),
            ListItemModel(title:"To do 3", isCompleted: false),
        ]
        items.append(contentsOf: newItems)
    }
}
