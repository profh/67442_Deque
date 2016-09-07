import Foundation
import XCTest

class DequeTest: XCTestCase {
  // Approach 1: Test deques with no elements, one element, multiple elements
  // aside: use ints for these deques, test range of functions
  func testEmptyDeque() {
    let deque = Deque<Int>()
    XCTAssertTrue(deque.isEmpty)
    XCTAssertEqual(deque.count, 0)
    XCTAssertEqual(deque.peekFirst(), nil)
    XCTAssertNil(deque.peekLast())
  }
  
  func testOneElement() {
    var deque = Deque<Int>()
    
    deque.pushFront(123)
    XCTAssertFalse(deque.isEmpty)
    XCTAssertEqual(deque.count, 1)
    XCTAssertEqual(deque.peekFirst(), 123)
    XCTAssertEqual(deque.peekLast(), 123)
    
    let result = deque.popBack()
    XCTAssertEqual(result, 123)
    XCTAssertTrue(deque.isEmpty)
    XCTAssertEqual(deque.count, 0)
    XCTAssertEqual(deque.peekFirst(), nil)
    XCTAssertNil(deque.peekLast())
  }
  
  func testMultipleElements() {
    var deque = Deque<Int>()
    
    deque.pushBack(123)
    deque.pushFront(456)
    deque.pushBack(789)
    XCTAssertFalse(deque.isEmpty)
    XCTAssertEqual(deque.count, 3)
    XCTAssertEqual(deque.peekFirst(), 456)
    XCTAssertEqual(deque.peekLast(), 789)
    
    let result1 = deque.popFront()
    XCTAssertEqual(result1, 456)
    XCTAssertFalse(deque.isEmpty)
    XCTAssertEqual(deque.count, 2)
    XCTAssertEqual(deque.peekFirst(), 123)
    XCTAssertEqual(deque.peekLast(), 789)
    
    let result2 = deque.popBack()
    XCTAssertEqual(result2, 789)
    XCTAssertFalse(deque.isEmpty)
    XCTAssertEqual(deque.count, 1)
    XCTAssertEqual(deque.peekFirst(), 123)
    XCTAssertEqual(deque.peekLast(), 123)
    
    let result3 = deque.popBack()
    XCTAssertEqual(result3, 123)
    XCTAssertTrue(deque.isEmpty)
    XCTAssertEqual(deque.count, 0)
    XCTAssertEqual(deque.peekFirst(), nil)
    XCTAssertNil(deque.peekLast())
  }
  
  
  // Approach 2: Test each method in the deque separately
  // aside: use strings for these deques, did pool some functions
  func testIsEmpty() {
    let deque = Deque<String>()
    XCTAssertTrue(deque.isEmpty)
    XCTAssertEqual(deque.count, 0)
  }
  
  func testCount() {
    var deque = Deque<String>()
    deque.pushBack("Green Arrow")
    deque.pushBack("Superman")
    deque.pushFront("Batman")
    XCTAssertFalse(deque.isEmpty)
    XCTAssertEqual(deque.count, 3)
  }
  
  func testPushAndPeekFunctions() {
    var deque = Deque<String>()
    deque.pushBack("Green Arrow")
    deque.pushBack("Superman")
    deque.pushFront("Batman")
    XCTAssertEqual(deque.peekFirst(), "Batman")
    XCTAssertEqual(deque.peekLast(), "Superman")
  }
  
  func testPopFunctions() {
    var deque = Deque<String>()
    deque.pushBack("Green Arrow")
    deque.pushBack("Superman")
    deque.pushFront("Batman")
    XCTAssertEqual(deque.popFront(), "Batman")
    XCTAssertEqual(deque.count, 2)
    XCTAssertEqual(deque.popBack(), "Superman")
    XCTAssertEqual(deque.count, 1)
    XCTAssertEqual(deque.peekFirst(), "Green Arrow")
  }
  
}
