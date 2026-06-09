import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import '../bin/hello.dart' as hello;

void main() {
  group('Activity 1 – Hello World', () {
    test('prints "Hello, World!" to the console', () {
      final lines = <String>[];
      runZoned(
        () => hello.main(),
        zoneSpecification: ZoneSpecification(
          print: (self, parent, zone, line) => lines.add(line),
        ),
      );
      expect(lines, contains('Hello, World!'));
    });
  });

  group('Student info (student.json)', () {
    late Map<String, dynamic> info;

    setUpAll(() {
      info = jsonDecode(File('student.json').readAsStringSync())
          as Map<String, dynamic>;
    });

    test('classCode is filled in', () {
      expect(info['classCode'], isNotEmpty,
          reason: 'Set classCode in student.json');
    });

    test('fullName is filled in', () {
      expect(info['fullName'], isNotEmpty, reason: 'Set fullName in student.json');
    });

    test('studentNumber is filled in', () {
      expect(info['studentNumber'], isNotEmpty,
          reason: 'Set studentNumber in student.json');
    });

    test('studentEmail is filled in', () {
      expect(info['studentEmail'], isNotEmpty,
          reason: 'Set studentEmail in student.json');
    });

    test('personalEmail is filled in', () {
      expect(info['personalEmail'], isNotEmpty,
          reason: 'Set personalEmail in student.json');
    });

    test('githubAccount is filled in', () {
      expect(info['githubAccount'], isNotEmpty,
          reason: 'Set githubAccount in student.json');
    });
  });
}
