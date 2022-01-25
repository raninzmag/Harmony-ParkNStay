//
//  SplashView.swift
//  IntroS
//
//  Created by Ranin Mag on 22/06/1443 AH.
//

import SwiftUI

struct SplashView: View {
    @State var isActive:Bool = false
    var body: some View {
        //        Splash
                VStack{
                    if self.isActive{
                        firstIntro()
                    }else{
                            ZStack{
                                Rectangle() .foregroundColor(Color("navy"))
                                    .ignoresSafeArea()
                                Image("Logo")
                            }//ZStack ends
                    }//else ends
                }//Vstack ends
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }//onAppear ends
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
