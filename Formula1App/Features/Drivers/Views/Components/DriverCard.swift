//
//  DriverCard.swift
//  F1App
//
//  Created by Emmanuel  Granados on 06/11/24.
//

import SwiftUI

struct DriverCard: View {
    var body: some View {
        HStack{
            VStack (alignment: .leading, spacing: 15){
                Text("1")
                    .font(FontsF1.swiftUIFont(for: .h3, weight: .regular))
                
                VStack(alignment: .leading, spacing: 5){
                    Text("CD")
                        .font(FontsF1.swiftUIFont(for: .h3, weight: .regular))
                    
                    Text("Verstappen")
                        .font(FontsF1.swiftUIFont(for: .h3, weight: .regular))
                }
                
                Text("Red Bull Racing")
                    .font(FontsF1.swiftUIFont(for: .h3, weight: .wide))
                
            }
            
            Spacer()
            
            ZStack{
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 132, height: 132)
                Text("255")
                    .padding(.top, 100)
                    .foregroundStyle(.white)
                    
            }
        }
        .padding()
        .bold()
    }
}

#Preview {
    DriverCard()
}
