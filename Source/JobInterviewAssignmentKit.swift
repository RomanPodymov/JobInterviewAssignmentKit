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

public protocol ViewModel {
    associatedtype ScreenType

    var screen: ScreenType! { get set }
}

open class BasicViewModel<ScreenType: Screen & AnyObject>: NSObject, ViewModel {
    public unowned var screen: ScreenType!
}
