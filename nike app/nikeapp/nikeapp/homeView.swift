//
//  homeView.swift
//  nikeapp
//
//  Created by Amin Entezari on 22/11/23.
//

import SwiftUI

struct homeView: View {
    @State private var selectedPageIndex = 0
    
    var body: some View {
        
            HStack {
                
                TabView(selection: $selectedPageIndex){
                    Picker("brand", selection: $selectedPageIndex, content: {
                        
                        
                        Image("nike").tag(0)
                        
                        
                        Image("jordan").tag(1)
                        
                        
                    })
                    
                    .pickerStyle(SegmentedPickerStyle())
                    .cornerRadius(200)
                    
                    
                }
                .padding()
                .frame(width: 150)
                Spacer()
                Image(systemName: "magnifyingglass")
                    .bold()
                
                
            }
            
            .frame(height: 120)
            .padding()
        
            
            
        
                    
                
                
                
            }
            
        
            
            
            
        }
        
        
        
        
    


#Preview {
    homeView()
}
