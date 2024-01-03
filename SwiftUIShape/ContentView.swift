//
//  ContentView.swift
//  SwiftUIShape
//
//  Created by Melik Demiray on 3.01.2024.
//

import SwiftUI

struct ContentView: View {


    @State var firstPercent: Double = 0

    var body: some View {
        ZStack {

            Circular(lineWidth: 40,
                percent: firstPercent,
                foregroundColor: Color.blue,
                backgroundColor: Color.blue.opacity(0.2))
                .padding(20)
                .frame(width: 400, height: 400, alignment: .center)
                .onTapGesture {
                if self.firstPercent == 0 {
                    self.firstPercent = 50
                } else {
                    self.firstPercent = 0
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
