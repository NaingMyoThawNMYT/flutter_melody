import 'package:flutter/material.dart';

import '../utils/midi_utils.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _init();

    return Scaffold();
  }

  Future<void> _init() async {
    /// load sound file
    await MidiUtils.prepare('assets/sf2/piano.sf2');
  }
}
