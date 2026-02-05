import SwiftUI

struct AthleteListView: View {
    // ❌ CANDIDATE TASK: Replace this hardcoded data with a ViewModel implementation
    @State private var athletes: [AthleteDisplayModel] = [
        AthleteDisplayModel(name: "Placeholder Athlete", username: "athlete1", imageUrl: nil),
        AthleteDisplayModel(name: "Placeholder Athlete 2", username: "athlete2", imageUrl: nil)
    ]

    var body: some View {
        List(athletes) { athlete in
            AthleteRowView(athlete: athlete)
        }
        .navigationTitle("Roster")
        .listStyle(.plain)
    }
}

// Temporary model for the UI. The candidate should define their own Domain Model.
struct AthleteDisplayModel: Identifiable {
    let id = UUID()
    let name: String
    let username: String
    let imageUrl: String?
}

// MARK: - Preview
#Preview {
    AthleteListView()
}
