//
//  ContentView.swift
//  Emoji_App
//
//  Created by Aaron Le on 3/3/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🤠,🧌,👩‍🚒,😽
}

struct ContentView: View {
    @State var selection: Emoji = .🧌
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                        //Text("Hello World")
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Lovers!")
            .padding()
        }
    }
}

// This section renders the preview on the right
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
