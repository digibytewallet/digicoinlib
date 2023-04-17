
import 'dart:typed_data';

class ECDSASignature {

  static const compactLength = 64;

  /// A compact representation of a ECDSASignature containing a big-endian
  /// 32-byte value and big-endian 32-byte S value.
  final Uint8List compact;

  /// Takes a 64-byte compact signature representation. See [this.compact].
  ECDSASignature.fromCompact(this.compact) {
    if (compact.length != compactLength) {
      throw ArgumentError(
        "Compact signatures should be $compactLength-bytes",
        "this.compact",
      );
    }
  }

}