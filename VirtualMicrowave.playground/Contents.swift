import UIKit

class VirtualMicrowave {
    
    // 使用可能ワット数定義
    enum WattBottunType {
        case power600W
        case power500W
    }
    
    //変数初期値
    var warmingTime : Int = 10 //分
    var warmingStopOperation = false
    var wattType: String = "500W"

    //イレギュラー処理、温めワット数、温め時間カウントダウン
    func start(wattBottun: WattBottunType){
        //イレギュラー処理(時間制限）
        guard warmingTime < 21, warmingTime > 0 else {
            print("温め時間エラー[設定可能範囲：1〜20(分)]")
            return
        }
        
        switch wattBottun {
        case .power600W:
            wattType = "600W"
        case .power500W:
            wattType = "500W"
        }
        //液晶表示部（温め開始）
        print("温め開始：\(wattType)で\(warmingTime)分温めます。")
        
        //液晶表示部（残時間、終了）
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

