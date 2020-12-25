//
//  ContentView.swift
//  Bopronome
//
//  Created by Gunesh Pinar on 2020-12-25.
//

import SwiftUI

struct ContentView: View {
    @State private var number = 60
    @State private var on = false
    @State private var bopImage = "mhop1"
    
    func getDisplayImage(bopImage: String) -> Image{
        let image: Image =
            Image(bopImage)

        return image.resizable()
    }
    
    var body: some View {
        VStack(spacing: 40){
            HStack(spacing: 70){
                Picker("", selection: $number){
                    ForEach(1...220, id: \.self){
                        Text("\($0)")
                    }
                }
                .frame(width:100)
                .clipped()
                Toggle(isOn: $on){
                    
                }
                .labelsHidden()
            }
            .padding()
            getDisplayImage(bopImage: bopImage)
                .frame(height: 200.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
