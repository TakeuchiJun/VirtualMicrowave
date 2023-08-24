import UIKit

class VirtualMicrowave {
    
    // 使用可能ワット数定義
    enum WattBottunType {
        case power600W
        case power500W
    }
    
    var warmingTime : Int = 10 //分
    var warmingStopOperation = false
    var wattType: String = "500W"

    //温めワット数、温め時間カウントダウン
    func start(wattBottun: WattBottunType){
        guard warmingTime < 21 else {
            print("温め時間は20分までです。設定し直してください。")
            return
        }
        
        switch wattBottun {
        case .power600W:
            wattType = "600W"
        case .power500W:
            wattType = "500W"
        }
        print("温め開始：\(wattType)で\(warmingTime)分温めます。")
        
        while !warmingStopOperation {
            print("残り時間:\(warmingTime)分")
            warmingTime -= 1
            if warmingTime < 1 {
                warmingStopOperation = true
                }
            }
        print("- 温め終了 -")
        }
   }

//電子レンジ操作
let controller = VirtualMicrowave()
controller.warmingTime = 20
controller.start(wattBottun: .power600W)






