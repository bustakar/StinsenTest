import Stinsen
import SwiftUI

struct LoginButton: View {

    var body: some View {
        Button("Login") {
            if let appRouter: AppCoordinator.Router = RouterStore.shared.retrieve() {
                appRouter.coordinator.root(\.authenticated)
            }
        }
        .buttonStyle(.borderedProminent)
    }
}
