//
//  quantityView.swift
//  nikeapp
//
//  Created by Amin Entezari on 15/11/23.
//

import SwiftUI

struct quantityView: View {
    @State private var showModal = false
    @State private var selectedValue = 0
    var body: some View {
        
        HStack {
            Button("Qty") {
                showModal.toggle()
                
                
                
            }
            .padding(.leading)
            .foregroundStyle(.black)
            .bold()
            
            Text(" \(selectedValue)")
                .padding(.trailing)
                .bold()
            
            Image(systemName: "chevron.down")
                
            Spacer()
            
            
        }
        
        .sheet(isPresented: $showModal, content: {
            quantityspecifiyView(selectedValue: $selectedValue)
                .presentationDetents([.fraction(0.4)])
        })
    }
}

struct quantityspecifiyView: View {
        @Binding var selectedValue: Int
        
        var body: some View {
            NavigationView {
                VStack {
                    Picker("Select a value", selection: $selectedValue) {
                        ForEach(0..<11) {
                            Text("\($0)")
                                .bold()
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    
                    Spacer()
                    
                    Button("Done") {
                        save()
                    }
                    .padding()
                    
                }
            }
        }

        private func dismiss() {
          
             selectedValue = selectedValue
         }
        private func save () {
            print("saved value: \(selectedValue)")
            return
        }
        
     }




#Preview {
    quantityView()
}
