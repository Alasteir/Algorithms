class LinkedArrayNode<T> {
    var value: T
    var next: LinkedArrayNode?
    
    init(_ value: T) {
        self.value = value
    }
}


class LinkedArray<T> {
    private var head: LinkedArrayNode<T>?
    private var tail: LinkedArrayNode<T>?
    
    func append(_ value: T) {
        let newNode = LinkedArrayNode(value)
        if let tailNode = tail {
            tailNode.next = newNode
            tail = newNode
        } else {
            head = newNode
            tail = newNode
        }
    }
    
    func removeFirst() -> T? {
        guard let firstNode = head else { return nil }
        let value = firstNode.value
        head = firstNode.next
        if head == nil {
            tail = nil
        }
        return value
    }
    
    func isEmpty() -> Bool {
        return head == nil
    }
}


class Bag<T> {
    private var linkedArray = LinkedArray<T>()
    
    func add(_ item: T) {
        linkedArray.append(item)
    }
    
    func removeRandom() -> T? {
        return linkedArray.removeFirst()
    }
    
    func isEmpty() -> Bool {
        return linkedArray.isEmpty()
    }
}


class Queue<T> {
    private var linkedArray = LinkedArray<T>()
    
    func enqueue(_ item: T) {
        linkedArray.append(item)
    }
    
    func dequeue() -> T? {
        return linkedArray.removeFirst()
    }
    
    func isEmpty() -> Bool {
        return linkedArray.isEmpty()
    }
}


class Stack<T> {
    private var linkedArray = LinkedArray<T>()
    
    func push(_ item: T) {
        linkedArray.append(item)
    }
    
    func pop() -> T? {
        return linkedArray.removeFirst()
    }
    
    func isEmpty() -> Bool {
        return linkedArray.isEmpty()
    }
}





let bag = Bag<Int>()
bag.add(1)
bag.add(2)
bag.add(3)

while !bag.isEmpty() {
    print(bag.removeRandom()!)
}

let queue = Queue<String>()
queue.enqueue("A")
queue.enqueue("B")
queue.enqueue("C")

while !queue.isEmpty() {
    print(queue.dequeue()!)
}

let stack = Stack<Double>()
stack.push(3.14)
stack.push(2.71)

while !stack.isEmpty() {
    print(stack.pop()!)
}

