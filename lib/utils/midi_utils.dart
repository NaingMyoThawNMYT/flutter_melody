import 'package:flutter/services.dart';

import 'package:flutter_midi/flutter_midi.dart';

class MidiUtils {
  static Future<void> prepare(String asset) async {
    await FlutterMidi.unmute();

    ByteData sf2Data = await rootBundle.load(asset);

    String name = asset.split('/').last;

    await FlutterMidi.prepare(sf2: sf2Data, name: name);
  }

  static Future<void> playNote(int midi) async {
    await FlutterMidi.playMidiNote(midi: midi);
  }

  static Future<void> stopNote(int midi) async {
    await FlutterMidi.stopMidiNote(midi: midi);
  }
}
