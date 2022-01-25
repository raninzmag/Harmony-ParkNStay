//
//  thirdIntro.swift
//  IntroS
//
//  Created by Ranin Mag on 19/06/1443 AH.
//

import SwiftUI

struct thirdIntro: View {
    @State var displayThirdIntro: Bool = false
    @State private var phase: CGFloat = 0
    var body: some View {
        if displayThirdIntro{
            withAnimation{
                home()
            }
            // .animation(.spring()) .transition(.opacity)
        }else{
            VStack{
                Image("intro3") .resizable()
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("navy"))
                        .ignoresSafeArea()
                    
                    VStack(alignment: .center){
                        Spacer()
                        Spacer()
                        Text("Find your Parking") .font(.title) .foregroundColor(.white) +
                        Text(" Easily ") .font(.title).foregroundColor(Color("pink"))
                        
                        Spacer()
                        Spacer()
                        withAnimation{
                            Line()
                                .stroke(style: StrokeStyle(lineWidth: 4, dash: [33], dashPhase: phase)) .frame(height: 1)
                                .foregroundColor(Color("pink")) .overlay(Image("CarIcon").position(x: 290, y: -3))
                        }
                        
                        
                        Spacer()
                        HStack{
                            Spacer()
                            Spacer()
                            Spacer()
                            Button(action: {
                                withAnimation(.easeInOut(duration: 1.0)){
                                    self.displayThirdIntro = true
                                    
                                }
                                
                            }, label: {
                                Text("Let's Get Started")
                                    .padding()
                                    .frame(width: 325, height: 44)
                                    .background(Color("pink"))
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                
                            })
                            
                            //                        //button ends
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
}// thirdIntro view ends

struct thirdIntro_Previews: PreviewProvider {
    static var previews: some View {
        thirdIntro()
    }
}
