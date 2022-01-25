//
//  firstIntro.swift
//  IntroS
//
//  Created by Ranin Mag on 19/06/1443 AH.
//

import SwiftUI

struct firstIntro: View {
    @State var displayFirstIntro: Bool = false
    @State var displayHome: Bool = false
    @State private var phase: CGFloat = 0
    
    var body: some View {
        if displayFirstIntro{
            withAnimation(.easeIn(duration: 0.0)){
                secondIntro()
            }
        }
        else if displayHome {
            withAnimation{
                home()
            }
        }else{
            VStack{
                Image("intro1") .resizable()
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("navy"))
                        .ignoresSafeArea()
                    
                    VStack(alignment: .center){
                        Spacer()
                        Spacer()
                        Text("Find Your Nearest ").font(.title).foregroundColor(.white) + Text("Available ") .font(.title).foregroundColor(Color("pink"))
                        +  Text("Parking Spot") .font(.title) .foregroundColor(.white)
                        Spacer()
                        Spacer()
                        Line()
                            .stroke(style: StrokeStyle(lineWidth: 3, dash: [33], dashPhase: phase)) .frame(height: 1)
                            .foregroundColor(Color("pink")) .overlay(Image("CarIcon") .position(x: 70, y: -3))
                        Spacer()
                        HStack{
                            Spacer()
                            Spacer()
                            Spacer()
                            Button("Skip"){
                                withAnimation(){
                                    self.displayHome = true}
                                
                            }//button ends
                            .foregroundColor(Color.gray)
                            Spacer()
                            Spacer()
                            Button(">"){
                                withAnimation(){
                                    self.displayFirstIntro = true}
                                
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
}// firstIntro view ends

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}
struct firstIntro_Previews: PreviewProvider {
    static var previews: some View {
        firstIntro()
    }
}
