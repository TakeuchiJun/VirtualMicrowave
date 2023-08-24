import UIKit

//class VirtualMicrowave {
    
    // ワット数
    
    enum wattBottunType {
        case wattBottun600W
        case wattBotton500W
    }
    
    //温め時間
    var warmingTime : Int = 10 //分
    var warmingStopOperation = false

    
 //   func start(){

        while !warmingStopOperation {
            print("残り時間:\(warmingTime)分")
            warmingTime -= 1
            if warmingTime < 1 {
                warmingStopOperation = true
            }
        }
print("- 温め終了 -")
        
  //  }
   
    
    
//}

//let controller = VirtualMicrowave()
//start.warmingTime = 10
//controller.start()






