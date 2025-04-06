//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Brendan Whittemore on 4/4/25.
//

import SwiftUI

struct ProminentTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    public func prominentTitleStyle() -> some View {
        modifier(ProminentTitle())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .prominentTitleStyle()
    }
}

#Preview {
    ContentView()
}
