import SwiftUI


struct  ConditionalModifiers: View {
            @State private var useRedText = false

            var body: some View {
                VStack {
                Button("Hello World") {
                    // flip the Boolean between true and false
                    useRedText.toggle()
                }
                .foregroundColor(useRedText ? .red : .blue)
                VStack {
                    Text("Gryffindor")
                        .blur(radius: 6)
                    Text("Hufflepuff")
                    Text("Ravenclaw")
                    Text("Slytherin")
                }
                .blur(radius: 15)
                    // blur-> regular modifier -> hangisi çoksa o
                    // text vs. -> environment modifier (childlar parenttan baskın)
                }
            }
        }
        
        
    




struct ConditionalModifiers_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalModifiers()
    }
}
