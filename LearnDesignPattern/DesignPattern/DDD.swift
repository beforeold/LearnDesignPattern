//
//  DDD.swift
//  DesignPattern
//
//  Created by beforeold on 2022/9/13.
//

import Foundation

typealias Entity = Int
typealias BO = Int
typealias VO = Int

class Repo {
  func getData() -> Entity {
    return 5
  }
  
  func save(data: Entity) {
    print("save \(data)")
  }
}

protocol Servicing {
  func getData() -> BO
  func save(data: BO)
}


class Controller {
  let service: Servicing
  init(service: Servicing) {
    self.service = service
  }
  
  func getData() -> VO {
    service.getData()
  }
  
  func save(data: VO) {
    service.save(data: data)
  }
}

class DDD {
  class Service: Servicing {
    let domain = Domain()
    let repo = Repo()
    
    func getData() -> BO {
      domain.add()
      return repo.getData()
    }
    
    func save(data: BO) {
      domain.save()
      repo.save(data: data)
    }
  }
  
  class Domain {
    func add() {
      
    }
    
    func save() {
      
    }
  }
  
  static func test() {
    let controller = Controller(service: Service())
    _ = controller.getData()
    controller.save(data: 5)
  }
}

class Traditional {
  class Service: Servicing {
    let repo = Repo()
    
    func getData() -> BO {
      // do get using service itself
      return repo.getData()
    }
    
    func save(data: BO) {
      // do save using service itself
      repo.save(data: data)
    }
  }
  
  static func test() {
    let controller = Controller(service: Service())
    _ = controller.getData()
    controller.save(data: 5)
  }
}
