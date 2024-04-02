import Stinsen
import SwiftUI

final class TabBarCoordinator: TabCoordinatable {

    var child = TabChild(
        startingItems: [
            \TabBarCoordinator.home,
             \TabBarCoordinator.settings,
        ],
        activeTab: 2
    )

    @Route(tabItem: makeHomeTab) var home = makeHome
    @Route(tabItem: makeSettingsTab) var settings = makeSettings

    init() {
        print("✅ TabBarCoordinator has been initialized.")
    }

    deinit {
        print("🔴 TabBarCoordinator has been deinitialized.")
    }
}

extension TabBarCoordinator {

    // MARK: - Home Tab

    @ViewBuilder func makeHomeTab(isActive: Bool) -> some View {
        Label("Home", systemImage: "house")
    }

    private func makeHome() -> some View {
        ZStack(alignment: .center) {
            Color.green
            LogoutButton()
        }
    }

    // MARK: - Settings Tab

    @ViewBuilder func makeSettingsTab(isActive: Bool) -> some View {
        Label("Settings", systemImage: "gear")
    }

    private func makeSettings() -> some View {
        Color.red
    }
}

