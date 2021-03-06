import UIKit

@testable import Pros

class ProListWireframeInterfacesMock {
        var functionsCalled = [String]()

        // MARK: - Input Variables
        var forPro: Pro?
        var inWindow: UIWindow?
}

extension ProListWireframeInterfacesMock: ProList {
        var delegate: ProListDelegate? {
                get {
                        functionsCalled.append(#function)
                        return nil
                }
            set {
                functionsCalled.append(#function)
            }
        }

        func present(inWindow window: UIWindow) {
                functionsCalled.append(#function)
                inWindow = window
        }
}

extension ProListWireframeInterfacesMock: ProListPresenterToWireframeInterface {
        func presentDetails(forPro pro: Pro) {
                functionsCalled.append(#function)
                forPro = pro
        }
}
