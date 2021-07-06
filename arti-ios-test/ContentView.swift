//
//  ContentView.swift
//  arti-ios-test
//
//  Created by Linus Gasser on 31.05.21.
//

import SwiftUI
import arti_ios

struct ContentView: View {
    @StateObject private var reply = BackgroundCall()

    var html = "Waiting for reply";
    var body: some View {
        Text("Testing TLS over Tor!")
            .padding()
        Text(reply.reply)
    }
}
