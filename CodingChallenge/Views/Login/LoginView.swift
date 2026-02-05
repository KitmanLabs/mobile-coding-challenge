import SwiftUI

struct LoginView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var isLoading = false
    @State private var errorMessage: String?
    @State private var navigationPath = NavigationPath()

    var body: some View {
        NavigationStack(path: $navigationPath) {
            VStack(spacing: 20) {
                Image(systemName: "lock.shield")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                    .foregroundColor(.blue)
                    .padding(.vertical, 20)

                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                    .autocapitalization(.none)

                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)

                if let errorMessage = errorMessage {
                    Text(errorMessage).foregroundColor(.red).font(.caption)
                }

                Button(action: performLogin) {
                    HStack(spacing: 8) {
                        Text("Log In")
                            .fontWeight(.semibold)
                        
                        if isLoading {
                            ProgressView()
                                .tint(.white)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .animation(.default, value: isLoading)
                }
                .disabled(isLoading)

                Spacer()
            }
            .padding()
        }
    }

    func performLogin() {
        // ❌ CANDIDATE TASK: Replace this with a real API call to /session.json
        isLoading = true
        
        // Simulating network delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            isLoading = false
        }
    }
}

// MARK: - Navigation Destination
enum LoginDestination: Hashable {
    case athleteList
}

// MARK: - Preview
#Preview {
    LoginView()
}
