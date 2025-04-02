void main() {
  // dynamic 은 자료형을 전부 받을 수 있음 재할당 시 자료형 변경 가능
  dynamic name = 'hello flutter';
  name = 11;
  print(name);

  // var 은 선언 시 자료형을 자동 추론해서 받지만 재할당 시 처음 추론한 자료형 변경 불가능
  var v = 'hello flutter';
  v = 'cant allocate diffrent datatype';
  print(v);

  // final 은 런타임 즉 실행한 후 확인
  final d1 = DateTime.now();
  // const 는 빌드타임 즉 실행 전 확인
  // 즉 함수 결과는 할당할 수 없음
  //   const d2 = DateTime.now();
  print(d1);
  //   print(d2);

  // List 주요함수 add 추가, where(boolean) 필터링, map 변경, reduce(누적변수,지역변수) 누적함수, fold 축약
  List<String> stringList = ['a', 'b', 'c', 'd'];
  final search = stringList.where((char) => char == 'a');
  print('where: ${search}');
  stringList.add('e');
  final alphabet = stringList.map((char) => 'alphabet: ' + char);
  stringList.add('fg');
  print("map: ${alphabet}");
  final alphabetJoin = stringList.reduce((acc, char) => acc += (',' + char));
  print("reduce 리스트의 자료형으로만 반환 가능:  ${alphabetJoin}");
  final alphabetAny = stringList.fold<int>(
    0,
        (acc, char) => acc += char.length,
  );
  print("fold 자료형을 변경해서 반환할 수 있음: ${alphabetAny}");

  Map<int, String> idxMap = {1: 'a', 2: 'b', 3: 'c', 4: 'd', 5: 'e'};
  print(idxMap);
  Set<String> stringSet = {'a', 'b', 'c', 'd','a'};
  print(stringSet);
}