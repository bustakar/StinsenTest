import Stinsen
import SwiftUI

final class UnauthenticatedCoordinator: NavigationCoordinatable {

    let stack = NavigationStack(initial: \UnauthenticatedCoordinator.root)

    @Root var root = makeRoot

    init() {
        print("✅ UnauthenticatedCoordinator has been initialized.")
    }

    deinit {
        print("🔴 UnauthenticatedCoordinator has been deinitialized.")
    }
}

extension UnauthenticatedCoordinator {

    private func makeRoot() -> some View {
        ZStack(alignment: .center) {
            Color.purple
            LoginButton()
        }
    }
}
