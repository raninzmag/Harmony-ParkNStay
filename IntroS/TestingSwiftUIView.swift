//
//  TestingSwiftUIView.swift
//  IntroS
//
//  Created by Ranin Mag on 20/06/1443 AH.
//

import SwiftUI

struct TestingSwiftUIView: View {
    var body: some View {
        ZStack {
            GeometryReader { geometryProxy in
                VStack {
                    HStack {
                        Text("Width")
                        Spacer()
                        Text(geometryProxy.size.width.description)
                    }
                    HStack {
                        Text("Height")
                        Spacer()
                        Text(geometryProxy.size.height.description)
                    }
                }
                
                Text("AmAtCenter")
                    .position(x: geometryProxy.size.width/2, y: geometryProxy.size.height/2)
            }
            
            Text("origin")
                .position(x: 0, y: 0)
            
            Text("origin")
                .position(x: 0, y: 0)
                .offset(x: 100, y: 100)
            
            Text("origin")
                .offset(x: 100, y: 100)
        }
        
    }
}

struct TestingSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TestingSwiftUIView()
    }
}
