import 'dart:async';
import 'dart:math';

class RandomNumberBloc {
  // streamcontroller for input events
  final _generateRandomController = StreamController<void>();
  // streamcontroller for output events
  final _randomNumberController = StreamController<int>();
  // input sink
  Sink<void> get generateRandomNumber => _generateRandomController.sink;
  // output sink
  Stream<int> get randomNumber => _randomNumberController.stream;
  // _secondsStreamController.sink;

  RandomNumberBloc() {
    _generateRandomController.stream.listen((_) {
      final random = Random().nextInt(10);
      _randomNumberController.sink.add(random);
    });
  }

  void dispose() {
    _generateRandomController.close();
    _randomNumberController.close();
  }
}
