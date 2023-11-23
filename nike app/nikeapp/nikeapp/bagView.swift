//
//  bagView.swift
//  nikeapp
//
//  Created by Amin Entezari on 14/11/23.
//

import SwiftUI

struct bagView: View {
    
    
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView{
                VStack {
                    Text("Bag")
                        .font(.title)
                        .bold()
                        .padding(.trailing,300)
                        .accessibilityLabel("bag")
                        .accessibilityAddTraits(.isHeader)
                }
                HStack{
                    Image("model_jr")
                    
                        .resizable()
                        .frame(width: 160,height: 160)
                    
                    
                        VStack(alignment:.leading){
                            Text(itemsdata[0].name)
                                .font(.title2)
                                .padding(.trailing)
                                .foregroundStyle(Color.black)
                            
                            Text(itemsdata[0].type)
                            Text(itemsdata[0].sex)
                            Text(itemsdata[0].color)
                            Text(itemsdata[0].siz)
                            Spacer()
                        }
                   
                    
                    .foregroundColor(.gray)
                    .padding(.leading,5)
                    
                    
                }
                
                                    
                                    
                
                .padding()
                HStack{
                    quantityView()
                    Text("56.97$")
                        .padding(.trailing)
                        .bold()
                }
                Divider()
                HStack{
                    
                    
                    Text("Have a Promo Code?")
                        .padding()
                        .bold()
                    Spacer()
                    Image(systemName: "plus")
                        .padding()
                        .bold()
                    
                }
                Divider()
                HStack{
                    
                    VStack(alignment:.leading){
                        Text("Subtotal")
                        Text("Delivery")
                        Text("Total")
                            .foregroundStyle(Color.black)
                        
                        
                        
                    }
                    .foregroundStyle(Color.gray)
                    .padding()
                    Spacer()
                    
                    
                    
                    
                    
                }
                
                
                VStack {
                    NavigationLink{
                        checkoutView()
                    } label: {
                        
                        
                        
                        VStack{
                            
                            Spacer()
                        
                            Text("Checkout")
                                .font(.headline)
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.black)
                                .cornerRadius(200)
                                .padding()
                            
                            
                        }
                        
                        .padding()
                        
                    }
                    
                }
                
            }
        }
    }
}
    


#Preview {
    bagView()
}
