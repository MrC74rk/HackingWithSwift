//
//  ContentView.swift
//  Day35Chal
//
//  Created by Bryan Angelo on 6/9/20.
//  Copyright © 2020 Bryan Angelo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var gameModeActive = false
    @State private var baseMultiple = 1.0
    @State private var numberOfQuestions = [5,10,20,100]
    @State private var theAnswer = 0
    
    var body: some View {
        VStack {
            Form {
                Text("Gamemode Settings")
                Slider(value: $baseMultiple, in: 0...12, step: 1)
                Text("Times Table: \(baseMultiple, specifier: "%.0f")")
                
                VStack {
                    
                    Text("Number of Questions")
                    
                    Picker(selection: $numberOfQuestions, label: Text(""),
                        content: {
                            Text("5 Questions").tag(0)
                            Text("10 Questions").tag(1)
                            Text("20 Questions").tag(2)
                            Text("100 Questions").tag(4)
                    }).pickerStyle(WheelPickerStyle())
                }.border(Color.black)
            }
                Section {
                    Text("Practicing \(baseMultiple, specifier: "%.0f")'s Times Tables")
                    Text("With   Questions:")
                    Spacer()
                    Button(action: {
                               // Add action
                           }, label: {
                               Text("Begin")
                    }).font(.title)
                    .foregroundColor(Color.white)
                    .padding(5)
                    
                    .background(Color.blue)
                    .cornerRadius(5)
                    
                }

            
        }
    
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
