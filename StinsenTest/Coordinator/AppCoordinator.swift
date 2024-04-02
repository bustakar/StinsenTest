import Stinsen

final class AppCoordinator: NavigationCoordinatable {

    var stack: Stinsen.NavigationStack<AppCoordinator>

    @Root var unauthenticated = makeUnauthenticated
    @Root var authenticated = makeAuthenticated

    init() {
        stack = NavigationStack(initial: \.unauthenticated)

        print("✅ AppCoordinator has been initialized.")
    }

    deinit {
        print("🔴 AppCoordinator has been deinitialized.")
    }
}

extension AppCoordinator {

    func makeUnauthenticated() -> NavigationViewCoordinator<UnauthenticatedCoordinator> {
        NavigationViewCoordinator(UnauthenticatedCoordinator())
    }

    func makeAuthenticated() -> NavigationViewCoordinator<AuthenticatedCoordinator> {
        NavigationViewCoordinator(AuthenticatedCoordinator())
    }
}
