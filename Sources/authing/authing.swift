import Foundation
import LocalAuthentication

@_cdecl("auth")
public func auth(msg: UnsafePointer<CChar>) -> Bool {
    let context = LAContext()
    var error: NSError?
    guard context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error) else {
        return false
    }

    var res = false
    let sem = DispatchSemaphore(value: 0)
    context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: String(cString: msg)) { success, error in
        res = success
        sem.signal()
    }
    sem.wait()
    return res
}