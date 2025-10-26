import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.teal)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 15) {
                Image("glowworm-caves")
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle (cornerRadius: 20, style: .continuous))
                
                HStack {
                    Text("Waitomo Caves")
                        .font(.title)
                        .bold()
                    
                    Spacer()

                    ForEach(0..<5) { _ in
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.yellow)
                    }
                }
            
                Text("New Zealand")
                    .font(.subheadline)
                    .italic()
                
                Text("Where crystal-lit walls & glowing pools guide you into a world of hidden magic.")
                    .font(.caption)
                
                HStack {
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundStyle(.secondary)
                .font(.caption)
            }
            .padding()
            .background() {
                Rectangle()
                    .foregroundStyle(Color.white.opacity(0.8))
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .shadow(radius: 15)
            }
        }
    }
}

#Preview {
    ContentView()
}
