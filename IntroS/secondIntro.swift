//
//  SecondIntro.swift
//  IntroS
//
//  Created by Ranin Mag on 19/06/1443 AH.
//

import SwiftUI

struct secondIntro: View {
    @State var displaySecondIntro: Bool = false
    @State var displayHome: Bool = false
    @State private var phase: CGFloat = 0
    var body: some View {
        if displaySecondIntro{
            withAnimation(.easeIn(duration: 0.0)){
                thirdIntro()
            }
        }
        else if displayHome {
            withAnimation{
                home()
            }
            //            .animation(.spring()) .transition(.slide)
        }else{
            VStack{
                Image("intro2") .resizable()
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("navy"))
                        .ignoresSafeArea()
                    
                    VStack(alignment: .center){
                        Spacer()
                        Spacer()
                        Text("Navigate ") .font(.title).foregroundColor(Color("pink"))
                        +  Text(" to your Selected Parking Spot") .font(.title) .foregroundColor(.white)
                        Spacer()
                        Spacer()
                        Line()
                            .stroke(style: StrokeStyle(lineWidth: 4, dash: [33], dashPhase: phase)) .frame(height: 1)
                            .foregroundColor(Color("pink")) .overlay(Image("CarIcon").position(x: 180, y: -3))
                        Spacer()
                        
                        HStack{
                            
                            Spacer()
                            Spacer()
                            Spacer()
                            Button("Skip"){
                                withAnimation(){
                                    self.displayHome = true
                                }
                            }//button ends
                            .foregroundColor(Color.gray)
                            Spacer()
                            Spacer()
                            Button(">"){
                                withAnimation(){
                                    self.displaySecondIntro = true
                                }
                            }//button ends
                            .foregroundColor(Color("pink"))
                            Spacer()
                        }
                        Spacer()
                        
                    }//vstack ends
                }//main Zstack ends
            }//main Vstack ends
            .background(Color("light"))
            .ignoresSafeArea()
        }//else ends
    }//body ends
}// secondIntro view ends

struct secondIntro_Previews: PreviewProvider {
    static var previews: some View {
        secondIntro()
    }
}
