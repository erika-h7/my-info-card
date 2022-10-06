//
//  ContentView.swift
//  ErikaCard
//
//  Created by Infinity Code on 10/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.97, green: 0.76, blue: 0.57, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("img123")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160, height: 160)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.black, lineWidth: 6))
                Text("Erika H.")
                    .font(Font.custom("RobotoMono", size: 45))
                    .multilineTextAlignment(.leading)
                    .bold()
                    .foregroundColor(Color(UIColor(red: 0.48, green: 0.54, blue: 0.43, alpha: 1.00)))
                Text("iOS Developer")
                    .font(.system(size: 23))
                    .foregroundColor(Color.black)
                Divider()
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.black)
                    .frame(height: 50)
                    .overlay(Text("+1 123-456-7890").foregroundColor(.white))
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
