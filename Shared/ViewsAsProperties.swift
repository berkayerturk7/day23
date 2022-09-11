//
//  ViewsAsProperties.swift
//  day23
//
//  Created by Berkay Ertürk on 11.09.2022.
//

import SwiftUI

struct ViewsAsProperties: View {
    
    
    
    let motto1 = Text("Draco dormiens")
    let motto2 = Text("nunquam titillandus")
    
    // yöntem-1
    
   @ViewBuilder var spells: some View {
        
            Text("Lumos")
            Text("Obliviate")
        
        
    }
    
    // yöntem-2
    
    var spells2: some View {
        Group { // Yöntem-3 , group yerine stack
             Text("Lumos")
             Text("Obliviate")
        }
         
     }
    
    
    
    var body: some View {
       
        
        VStack {
                   motto1
                        .foregroundColor(.red)
                   motto2
                        .foregroundColor(.blue)
            
                   spells
               }
    
    }
}

struct ViewsAsProperties_Previews: PreviewProvider {
    static var previews: some View {
        ViewsAsProperties()
    }
}
