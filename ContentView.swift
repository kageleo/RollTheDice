//
//  ContentView.swift
//  RollTheDice
//
//  Created by 吉郷景虎 on 2020/08/05.
//  Copyright © 2020 Kagetora Yoshigo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //　@Stateで宣言したものが更新されるとviewも更新される
    @State var rolledNumber = 1
    @State var rolledIt = false
    
    var body: some View {
        VStack {
            Image(rolledIt ? "\(rolledNumber)" : "unknown")
                .resizable()
                .frame(width:100, height: 100)
                .aspectRatio(contentMode: .fit)
                .clipped()
                .padding(.top, 250)
            Spacer()
            Button(action: {
                let randomNumber = Int.random(in: 1...6)
                self.rolledNumber = randomNumber
                self.rolledIt = true
            }) {
                RollButtonContent()
            }
                .padding(.bottom, 40)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RollButtonContent: View {
    var body: some View {
        Text("Roll the dice")
            .frame(width: 240, height: 75)
            .foregroundColor(.white)
            .font(.headline)
            .background(Color.orange)
            .cornerRadius(20)
    }
}
