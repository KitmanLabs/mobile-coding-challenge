import SwiftUI

struct AthleteRowView: View {
    let athlete: AthleteDisplayModel
    
    var body: some View {
        HStack(spacing: 16) {
            // TODO: Replace this placeholder with AsyncImage or similar
            Circle()
                .fill(Color.gray.opacity(0.3))
                .frame(width: 50, height: 50)
                .overlay(Text("📷").font(.caption))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(athlete.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(athlete.username)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
        .padding(.vertical, 4)
    }
}
