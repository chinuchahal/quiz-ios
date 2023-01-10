import Swinject

extension Container {
#if RELEASE
    static let container: Container = {
        let container = Container()
        return container
    }()
#endif
}
