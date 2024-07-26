import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GETTASKENTRYSTSTUSQUERY
Future<List<GetTaskEntryStstusQueryRow>> performGetTaskEntryStstusQuery(
  Database database,
) {
  const query = '''
SELECT status FROM taskentry;
''';
  return _readQuery(database, query, (d) => GetTaskEntryStstusQueryRow(d));
}

class GetTaskEntryStstusQueryRow extends SqliteRow {
  GetTaskEntryStstusQueryRow(super.data);

  String? get status => data['status'] as String?;
}

/// END GETTASKENTRYSTSTUSQUERY
