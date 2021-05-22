//
//  ContentView.swift
//  veterans-code-a-thon
//
//  Created by Leonard Box on 5/21/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var businessListener = BusinessListener()
    var categories: [String : [Business]] {
        .init(
            grouping: businessListener.businesses,
            by: {$0.businessType.rawValue}
        )
    }
    
    var body: some View {
        NavigationView {
            List(categories.keys.sorted(), id: \String.self) { key in
                CategoryHomeRowView(categoryName: "\(key) Category".uppercased(), parks: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
            }
            .navigationBarTitle(Text("VetNetSA"))
            .navigationBarItems(leading:
                Button(action: {
                    //code
                    print("logout")
                }, label: {
                    Text("")
                })
                ,trailing:
                NavigationLink(destination: BusinessListView()) {
                    Text("List")
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
