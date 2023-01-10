import Swinject

extension Container {
    public func resolveExplicitly<Service>(_ serviceType: Service.Type) -> Service {
        guard let service = resolve(serviceType) else {
            fatalError("failed to resolve: \(serviceType), thus crashing")
        }
        return service
    }
}

extension Resolver {
    public func resolveExplicitly<Service>(_ serviceType: Service.Type) -> Service {
        guard let service = resolve(serviceType) else {
            fatalError("failed to resolve: \(serviceType), thus crashing")
        }
        return service
    }
}
