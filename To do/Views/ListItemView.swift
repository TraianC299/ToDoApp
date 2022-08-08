//
//  ListItemView.swift
//  To do
//
//  Created by Traian on 08.08.2022.
//

import SwiftUI

struct ListItemView: View {
    @State var item:ListItemModel
    //@State var checked:Bool
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.square.fill" : "checkmark.square")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
        }
        .font(.title2)
        .padding(.vertical, 8)
        .onTapGesture {
            item.isCompleted.toggle()
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var item1 = ListItemModel(title: "Heelo", isCompleted: false)
    static var item2 = ListItemModel(title: "Binfo", isCompleted: false)
    static var previews: some View {
        Group{
            ListItemView(item:item1)
            ListItemView(item:item2)
        }
    }
}
