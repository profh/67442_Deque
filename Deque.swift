/*
  Deque (pronounced 'deck') is a generalized queue where it is possible to push or pop 
  from either the front or the back. (Just like drawing cards from the top or bottom of
  a deck.)  Unlike a queue (which is always FIFO), we could place things in any order 
  we desire.
 
*/

public struct Deque<T> {
  private var array = [T]()
  
  public var isEmpty: Bool {
    return array.isEmpty
  }
  
  public var count: Int {
    return array.count
  }
  
  public func peekFirst() -> T? {
    return array.first
  }
  
  public func peekLast() -> T? {
    return array.last
  }
  
  mutating func pushBack(obj: T) {
    array.append(obj)
  }
  
  mutating func pushFront(obj: T) {
    array.insert(obj, at: 0)
  }
  
  mutating func popBack() -> T? {
    return array.popLast()
  }
  
  mutating func popFront() -> T? {
    if array.isEmpty {
      return nil
    } else {
      return array.removeFirst()
    }
  }
  
}
