//
//  ContentView.swift
//  Restart
//
//  Created by Abduqodir's MacPro on 2022/03/31.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        } //: ZSTACK
    }
}


//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
