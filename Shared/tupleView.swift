
import SwiftUI

struct TupleView: View {
    
    var body: some View {
        
        //VStack'in içindeki yapılar interpret edilince TupleView olarak tutulur,
        // max sınırı 10'dur TupleView'ın.
        
        //Stacksiz kullanımda yine, farklı viewlar olduğunda @ViewBuilder body üzerinde
        // apply edilir ve yine tek bir tupple şeklinde tutulur.
        
        VStack {
        Button("Hello World") {
            print(type(of: self.body))
        }.padding()
        
        VStack {
        Text("Hello, world! ")
        Text("world")
        }
        
        }
    }
}

struct TupleView_Previews: PreviewProvider {
    static var previews: some View {
        TupleView()
    }
}
