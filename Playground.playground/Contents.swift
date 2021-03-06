//: Playground - noun: a place where people can play

import ReactiveKit
import PlaygroundSupport

var p: Property! = Property(1)
weak var wp: Property<Int>? = p

Signal1<Double>.interval(1, queue: DispatchQueue.main).map { $0 }.debug().bind(to: p)

DispatchQueue.main.after(when: 3.3) {
  p = nil
  wp
}

PlaygroundPage.current.needsIndefiniteExecution = true
