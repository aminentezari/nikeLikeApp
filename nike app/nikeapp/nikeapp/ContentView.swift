//
//  ContentView.swift
//  nikeapp
//
//  Created by Amin Entezari on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView{
            
           homeView()
            
               .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                    
                }
            Text("Shop")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("shop")
                    
                }
            Text("Favourite")
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favourite")
                }
            
            bagView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Bag")
                }
            Text("Profile")
                        .tabItem {
                            Image(systemName: "person")
                            Text("Profile")
                            
                        }
            
            
            
            
            
        }
        
    }
    
}
#Preview {
    ContentView()
    
}
