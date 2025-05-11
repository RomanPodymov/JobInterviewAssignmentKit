//
//  JobInterviewAssignmentKit.swift
//  JobInterviewAssignmentKit
//
//  Created by Roman Podymov on 11/05/2025.
//  Copyright © 2025 Bookie. All rights reserved.
//

import UIKit

public protocol Screen {
    associatedtype ViewModelType

    @MainActor
    var viewModel: ViewModelType! { get }
}

open class BasicScreen<VM: ViewModel>: UIViewController {
    // swiftlint:disable:next force_cast
    lazy var viewModel = VM(screen: self as! VM.ScreenType)
}

public protocol ViewModel {
    associatedtype ScreenType

    var screen: ScreenType! { get set }
    init(screen: ScreenType)
}

open class BasicViewModel<ScreenType: Screen & AnyObject>: NSObject, ViewModel {
    public unowned var screen: ScreenType!

    public required init(screen: ScreenType) {
        self.screen = screen
    }
}
