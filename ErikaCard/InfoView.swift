//
//  InfoView.swift
//  ErikaCard
//
//  Created by Infinity Code on 10/6/22.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let iconImageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.black)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: iconImageName)
                    .foregroundColor(Color(UIColor(red: 0.48, green: 0.54, blue: 0.43, alpha: 1.00)))
                Text(text).foregroundColor(.white)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "hello", iconImageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
