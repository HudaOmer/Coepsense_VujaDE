import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'components/custom_switch.dart';

class SwitchesPage extends StatefulWidget {
  const SwitchesPage({super.key});

  @override
  State<SwitchesPage> createState() => _SwitchesPageState();
}

class _SwitchesPageState extends State<SwitchesPage> {
  bool _isSwitch1On = false;
  bool _isSwitch2On = false;
  bool _isSwitch3On = false;

  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

  Future<void> _loadPreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isSwitch1On = prefs.getBool('switch1') ?? false;
      _isSwitch2On = prefs.getBool('switch2') ?? false;
      _isSwitch3On = prefs.getBool('switch3') ?? false;
    });
  }

  Future<void> _savePreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('switch1', _isSwitch1On);
    await prefs.setBool('switch2', _isSwitch2On);
    await prefs.setBool('switch3', _isSwitch3On);
  }

  void _onSwitchChanged(int index, bool value) {
    setState(() {
      switch (index) {
        case 0:
          _isSwitch1On = value;
          break;
        case 1:
          _isSwitch2On = value;
          break;
        case 2:
          _isSwitch3On = value;
          break;
      }
      _savePreferences(); // Save preferences after state change
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switches with Shared Preferences'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          SwitchListTile(
            title: const Text('Switch 1'),
            value: _isSwitch1On,
            onChanged: (bool value) {
              _onSwitchChanged(0, value);
            },
          ),
          SwitchListTile(
            title: const Text('Switch 2'),
            value: _isSwitch2On,
            onChanged: (bool value) {
              _onSwitchChanged(1, value);
            },
          ),
          SwitchListTile(
            title: const Text('Switch 3'),
            value: _isSwitch3On,
            onChanged: (bool value) {
              _onSwitchChanged(2, value);
            },
          ),
          const CustomSwitch(keyName: 'mySwitchKey'),
        ],
      ),
    );
  }
}
