

struct NoValue: Error {}

func Unwrap<Value>(_ value: Value?) throws -> Value {
    switch value {
    case .some(let value): return value
    case .none: throw NoValue()
    }
}
