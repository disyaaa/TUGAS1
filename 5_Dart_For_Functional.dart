// Dimas Nurdiansyah (065119138)
// Use Dart For Functional

String scream(int length) => "Dim${'a' * length}s!";

main() {
  final values = [1, 2, 3, 5, 10, 50];
  for (var length in values) {
    print(scream(length));
  }
}
