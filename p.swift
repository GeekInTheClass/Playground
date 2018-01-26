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


// 4번 문제
//
// 문제 : 알파벳 소문자로만 이루어진 단어 또는 문장이 주어진다. 이 때, 모음(a, e, i, o, u)의 개수를 출력하는 프로그램을 작성하시오.
//
// 예제
// 입력 : Swift Hello World
// 출력 : 4
//

func problem_4 (input : String) -> Int {

let vowel = "aeiou"
var count = 0

//모음에 포함될 경우 카운트를 증가시킨다.
for c in input {
    if vowel.contains(c) {
        count+=1
    }
}

return count
}

let sentences = ["Swift Hello World", "IronMan" , "Hello, playground", "hello!!!", "Mississipi"]

for sentence in sentences {
// print(problem_4(input:sentence))
}

// 5번 문제

// 문제 : 알파벳 대소문자로 된  단어나 문장이 주어지면, 이 단어에서 가장 많이 사용된 알파벳이 무엇인지 알아내는 프로그램을 작성하시오.
// 단, 대문자와 소문자를 구분한다.
//
// 가장 많이 사용된 알파벳을 대문자로 출력한다. 단, 가장 많이 사용된 알파벳이 여러 개 존재하는 경우에는 '?'를 출력한다.
//
// 출력 예제
// 입력 : Swift Hello World
// 출력 : L
//
// 입력 : IronMan
// 출력 : N
//
// 입력 : Mississipi
// 출력 : ?
//

func problem_5 (input : String) -> String {

let letters = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM"

//알파벳을 딕셔너리에 추가한다.
var dict : [Character : Int] = [:]
for c in letters {
    dict[c] = 0
}

//주어진 문자열을 탐색한다. 대소문자에 포함될 경우 딕셔너리에 갱신한다.
for c in input {
    if letters.contains(c){
        dict[c]?+=1
    }
}

//딕셔너리를 정렬한다.
var sorted = dict.sorted(by: {$0.1 > $1.1})

//조건에 따라 결과 출력
if sorted[0].value == sorted[1].value {
    return "?"
} else{
    return String(sorted[0].key).uppercased()
}
}

for sentence in sentences {
// print(problem_5(input:sentence))
}
