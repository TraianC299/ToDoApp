//
//  AddView.swift
//  To do
//
//  Created by Traian on 08.08.2022.
//

import SwiftUI

struct AddView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    @State private var taskTitle: String = ""
    
    
    
    func addNewTask(){
        listViewModel.addItem(title: taskTitle)
        taskTitle=""
    }
    var body: some View {
        ScrollView{
            VStack {
                TextField("Task title", text:$taskTitle)
                    .padding()
                    .border(.blue, width: 2)
                    .cornerRadius(10)

                    .frame(height:55)
                Button(action: {
                    addNewTask()
                }, label: {Text("Save" .uppercased())
                })
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(10)
                .font(.headline)
                
            }
            .padding(14)
        }
        .navigationTitle("Add a new task")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
