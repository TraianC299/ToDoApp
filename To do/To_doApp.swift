//
//  To_doApp.swift
//  To do
//
//  Created by Traian on 08.08.2022.
//

import SwiftUI

@main
struct To_doApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
