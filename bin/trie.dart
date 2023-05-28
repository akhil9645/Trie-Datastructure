// class trie {
//   Map<String, dynamic> root = {};
//   void insert(String word) {
//     Map<String, dynamic> node = root;
//     for (var i = 0; i < word.length; i++) {
//       String c = word[i];
//       if (!node.containsKey(c)) {
//         node[c] = <String, dynamic>{};
//       }
//       node = node[c];
//     }
//     node['isendofword'] = true;
//   }

//   bool search(String word) {
//     Map<String, dynamic> node = root;
//     for (var i = 0; i < word.length; i++) {
//       String c = word[i];
//       if (!node.containsKey(c)) {
//         return false;
//       }
//       node = node[c];
//     }
//     return node.containsKey('isendofword');
//   }

//   bool delete(String word) {
//     Map<String, dynamic> node = root;
//     List<Map<String, dynamic>> stack = [];
//     for (var i = 0; i < word.length; i++) {
//       String c = word[i];
//       if (!node.containsKey(c)) {
//         return false;
//       }
//       stack.add(node);
//       node = node[c];
//     }
//     if (!node.containsKey('isendofword')) {
//       return false;
//     }
//     node.remove('isendofword');
//     if (node.isNotEmpty) {
//       return true;
//     }
//     for (var i = stack.length - 1; i >= 0; i--) {
//       Map<String, dynamic> curr = stack[i];
//       String c = word[i];
//       if (curr[c].isNotEmpty) {
//         break;
//       }
//       curr.remove(c);
//     }
//     return true;
//   }
// }

// void main(List<String> args) {
//   trie ak = trie();

//   ak.insert("cat");
//   ak.insert("car");
//   ak.insert("house");
//   print(ak.root);
//   print(ak.search("house"));
//   print(ak.search("cat"));
//   ak.delete("car");
//   print(ak.search("car"));
// }

void main(List<String> args) {
  List<int> array = [0, 1, 0, 3, 12];
  for (int i = 0; i < array.length - 1; i++) {
    for (int j = array.length - i - 1; j >= 0; j--) {
      if (array[i] == 0) {
        int temp = array[i];
        array[i--] = array[j];
        array[j] = temp;
      }
    }
  }
  print(array);
}
