void main() {
  print(recover('NEOTWONEINEIGHTOWSVEEN'));
}

String recover(String str) {
  const alph = [
    ['Z', 'E', 'R', 'O'],
    ['O', 'N', 'E'],
    ['T', 'W', 'O'],
    ['T', 'H', 'R', 'E', 'E'],
    ['F', 'O', 'U', 'R'],
    ['F', 'I', 'V', 'E'],
    ['S', 'I', 'X'],
    ['S', 'E', 'V', 'E', 'Y'],
    ['E', 'I', 'G', 'H', 'T'],
    ['N', 'I', 'N', 'E']
  ];
  final result = [];
  final inputStr = str.split('');
  if (inputStr.length < 3) return 'No digits found';
  while (inputStr.length >= 3) {
    for (var i = 0; i <= 9; i++) {
      if (inputStr.length < alph[i].length) continue;
      var sub = inputStr.sublist(inputStr.length - alph[i].length);
      var counter = 0;
      for (var a = 0; a < alph[i].length; a++) {
        if (sub.contains(alph[i][a])) {
          sub.remove(alph[i][a]);
          counter++;
        }
      }
      if (counter == alph[i].length) {
        result.add(i);
      }
    }
    inputStr.removeLast();
  }
  if (result.length == 0) return 'No digits found';
  return result.reversed.join('');
}
