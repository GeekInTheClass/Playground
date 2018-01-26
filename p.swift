//1번문제
//첫째 줄부터 N번째 줄 까지 입력값에 따라 별을 출력한다.
//예시)
//input       ->      output
//1           ->        *
//
//2           ->        *
//                      **
//
//3           ->        *
//                      **
//                      ***

func test(input: Int) {
    var temp: String = ""
    
    for i in 1...input {
        for j in 0...(i - 1) {
            temp += "*"
        }
        print("\(temp)")
        temp = ""
    }
}

//2번문제
//N을 입력받은 뒤, 구구단 N단을 출력하는 프로그램을 작성하시오.
//예시
//2 * 1 = 2
//2 * 2 = 4
//2 * 3 = 6
//2 * 4 = 8
//2 * 5 = 10
//2 * 6 = 12
//2 * 7 = 14
//2 * 8 = 16
//2 * 9 = 18


func test2(input: Int) {
    var temp: String = ""
    
    for i in 1...9 {
        var t:Int = input * i
        print("\(input)" + " * " + "\(i)" + " = " + "\(t)")
    }
}


//문제 3
// transactions값들 중 20.0보다 큰 값들만 저장하고 이 값들을 내림차순으로 정렬하기
let transactions = [119.99, 34.99, 12.99, 8.99]
var result :[Double] = []
for num in transactions{
    if num >20.0 {
        result += [num]
    }
}
result.sorted(by: <)
