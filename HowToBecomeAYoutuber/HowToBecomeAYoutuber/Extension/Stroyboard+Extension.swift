//
//  Stroyboard+Extension.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 19.05.2022.
//


import Foundation
import UIKit

public enum StoryboardNames: String {
    case main = "Main"
    case detailFlow = "DetailFlow"
    case explanation = "ExplanationFlow"
    case developer = "DeveloperFlow"
}

protocol StoryboardSettings {
    var storyboardName: StoryboardNames { get set }
}

public extension UIViewController {
    /// How to: Instantiate UIViewController from storyboard.
    ///
    /// - Parameters:
    ///   - storyboard: Name of the storyboard where the UIViewController is located.
    ///   - bundle: Bundle in which storyboard is located.
    ///   - identifier: UIViewController's storyboard identifier.
    /// - Returns: Custom UIViewController instantiated from storyboard.
    
    class func instantiate(storyboard: StoryboardNames = StoryboardNames.main, bundle: Bundle? = nil, identifier: String? = nil) -> Self {
        let viewControllerIdentifier = identifier ?? String(describing: self)
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: bundle)
        guard let viewController = storyboard
            .instantiateViewController(withIdentifier: viewControllerIdentifier) as? Self else {preconditionFailure("Unable to instantiate view controller with identifier \(viewControllerIdentifier) as type \(type(of: self))")
        }
        return viewController
    }
}

