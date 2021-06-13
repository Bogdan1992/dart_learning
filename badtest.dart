void main(List<String> arguments) {
  var bob = <String>[
    "a",
    "b",
    "c",
  ];
  print(longestConsec(bob, 2));
}

String longestConsec(List<String> strarr, int k) {
  if (strarr.isEmpty || k > strarr.length || k <= 0) return '';
  var resultarray = <String>[];
  var resultString = '';
  while (strarr.isNotEmpty && strarr.length >= k) {
    if (resultString.length < strarr.sublist(0, k).join('').length) {
      resultString = strarr.sublist(0, k).join('');
    }
    strarr.removeRange(0, 1);
  }

  return resultString;
}
