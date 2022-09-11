import SwiftUI

// kendi kombinasyonlarımızı mixleyip yeni bir modifier oluşturmak için
// daha sonra bunu, tüm başlıklarda vs direkt kullanarabiliriz.

// ana struct- > customModifiers
// a-b-c adımlar


struct customModifiers: View {
    
    var body: some View {
        VStack {
            Text("Day23")
                .modifier(Title())
            
            Text("Day23")
                .titleStyle()
            
            Color.red
                .frame(width: 300, height: 300)
                .watermarked(with: "Day23")
            }
    }
}

// a- resmi yontem gibi.
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}


extension View {
    // b-> ana structtan cagrılmasını kolaylaştıralım
    func titleStyle() -> some View {
        modifier(Title())
    }
    // d-> diğer yöntem için yeni extension ekledik
    func watermarked(with text: String) -> some View {
            modifier(Watermark(text: text))
        }
}

// c-> diğer yöntem
struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content // eklenecek contentimiz
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}


struct customModifiers_Previews: PreviewProvider {
    static var previews: some View {
        customModifiers()
    }
}
