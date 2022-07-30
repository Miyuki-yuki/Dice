//
//  ContentView.swift
//  rollingDice3
//
//  Created by Miyuki Kikuchi on 06/07/2022.
//

import SwiftUI



struct ContentView: View {
    
    @State private var number = 1
    @State private var number2 = 3
    
    var body: some View {
        VStack {
            Image("circle")
                .resizable()
        .background(Color.green)
        }
        VStack {
            Image("dice\(number)")
            Image("dice\(number2)")
            
            Button(action: {
                number = Int.random(in: 1...6)
                number2 = Int.random(in: 1...6)
            }){
              Text("Roll!")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(width: 100, height: 50)
                    .background(.yellow)
                    .clipShape(Capsule())
                    .padding()
        VStack{
            Text("The numbers are \(number) & \(number2)")
                .font(.title)
                .foregroundColor(.black)
                }
    }
}
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
