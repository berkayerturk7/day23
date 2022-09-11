
import SwiftUI

/*
 var body: some View {
         VStack(spacing: 10) {
             Text("First")
                 .font(.largeTitle)
                 .padding()
                 .foregroundColor(.white)
                 .background(.blue)
                 .clipShape(Capsule())

             Text("Second")
                 .font(.largeTitle)
                 .padding()
                 .foregroundColor(.white)
                 .background(.blue)
                 .clipShape(Capsule())
         }
     }
 */

// yerine
// viewComposition -> ana structımız

struct viewComposition: View {
    
    var body: some View {
        
        VStack(spacing: 10) {
        textT(text: "First")
                .foregroundColor(.white)
        textT(text: "Second")
                .foregroundColor(.yellow)
        }
    }
}

struct textT: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
           // .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct viewComposition_Previews: PreviewProvider {
    static var previews: some View {
        viewComposition()
    }
}
