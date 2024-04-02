import Stinsen
import SwiftUI

final class AuthenticatedCoordinator: NavigationCoordinatable {

    let stack = NavigationStack(initial: \AuthenticatedCoordinator.root)

    @Root var root = makeRoot

    init() {
        print("✅ AuthenticatedCoordinator has been initialized.")
    }

    deinit {
        print("🔴 AuthenticatedCoordinator has been deinitialized.")
    }
}

extension AuthenticatedCoordinator {

    private func makeRoot() -> TabBarCoordinator {
        TabBarCoordinator()
    }
}
