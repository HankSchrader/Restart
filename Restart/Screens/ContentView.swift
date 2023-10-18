//
//  ContentView.swift
//  Restart
//
//  Created by Erik Mikac on 10/16/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingActive: Bool = false
    var body: some View {
        ZStack {
            if isOnboardingActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .animation(.easeOut (duration: 0.5), value: isOnboardingActive)
    }
}

#Preview {
    ContentView()
}
