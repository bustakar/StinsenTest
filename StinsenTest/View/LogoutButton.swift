import Stinsen
import SwiftUI

struct LogoutButton: View {

    var body: some View {
        Button("Logout") {
            if let appRouter: AppCoordinator.Router = RouterStore.shared.retrieve() {
                appRouter.coordinator.root(\.unauthenticated)
            }
        }
        .buttonStyle(.borderedProminent)
    }
}
