//
//  ContentView.swift
//  Restart
//
//  Created by Kajal on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    // Property wrapper, use getter & setter method to store data permanently in storage
    // onboarding = User defaults key
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
