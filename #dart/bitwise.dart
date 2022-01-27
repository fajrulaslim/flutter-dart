/// //////////////////////////////////
/// Nama File: bitwise.dart
/// //////////////////////////////////

void main() {
  int a = 120; // dalam bentuk biner: 01111000
  int b = 127; // dalam bentuk biner: 01111111

  print('Bitwise AND');
  print('$a & $b: ${a & b}');

  print('\nBitwise OR');
  print('$a | $b: ${a | b}');

  print('\nBitwise XOR');
  print('$a ^ $b: ${a ^ b}');

  print('\nBitwise NOT');
  print('~$a: ${~a}');
  print('~$b: ${~b}');

  print('\nBitwise SHIFT LEFT');
  print('$a << 1: ${a << 1}');
  print('$b << 1: ${b << 1}');

  print('\nBitwise SHIFT RIGHT');
  print('$a >> 1: ${a >> 1}');
  print('$b >> 1: ${b >> 1}');
}
