//
//  home.swift
//  IntroS
//
//  Created by Ranin Mag on 19/06/1443 AH.
//

import SwiftUI

struct home: View {
    var body: some View {
        ZStack{
            
            Rectangle() .foregroundColor(Color("navy")) .ignoresSafeArea()
            Text("Home").font(.title) .foregroundColor(.white)
        }
        
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
