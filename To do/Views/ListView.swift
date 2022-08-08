//
//  ListView.swift
//  To do
//
//  Created by Traian on 08.08.2022.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    
    
   
    var body: some View {
        List{
            ForEach(listViewModel.items){toDoItem in
                ListItemView(item:toDoItem)
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("To do:")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        .environmentObject(ListViewModel())
        .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))

    }
}


