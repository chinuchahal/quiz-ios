import Swinject

extension Container {
#if DEV
    static let container: Container = {
        let container = Container()
        return container
    }()
#endif
}
