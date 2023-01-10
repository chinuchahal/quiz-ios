import SwiftUI
import Swinject

// MARK: - ViewModel
protocol ViewModel: ObservableObject {
    associatedtype VMParameters
    init(parameters: VMParameters, container: Container)
    func subscribe()
    func fetch()
}

// MARK: - ViewModel - Default Implementations
extension ViewModel {
    func subscribe() { }
    func fetch() { }
}

// MARK: - Managed View
protocol ManagedView: View {
    associatedtype VModel: ViewModel
    var viewModel: VModel { get }
    init(viewModel: VModel)
}

// MARK: - Managed View - Convenience Initializers
extension ManagedView {
    init(with parameters: VModel.VMParameters) {
        let viewModel = VModel(parameters: parameters, container: .container)
        viewModel.subscribe()
        self.init(viewModel: viewModel)
    }

    init() where VModel.VMParameters == Void {
        self.init(with: ())
    }
}
