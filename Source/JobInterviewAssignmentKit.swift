public protocol AnyScreen: AnyObject {
    
}

open class AnyViewModel {
    public unowned var screen: AnyScreen!
    
    public init(screen: AnyScreen!) {
        self.screen = screen
    }
}
