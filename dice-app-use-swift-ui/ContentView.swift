//
//  ContentView.swift
//  dice-app-use-swift-ui
//
//  Created by bagus on 20/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var left = 1
    @State var right = 4
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n:left)
                    DiceView(n:right)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.left = Int.random(in: 1...6)
                    self.right = Int.random(in: 1...6)
                }){
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let n : Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
