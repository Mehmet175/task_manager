/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : task_manager 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 4.10.2023 23:07
Notes        : 

*/

extension IterableExtension<T> on Iterable<T> {
  T? firstWhereOrNull(bool Function(T element) test) {
    final list = where(test);
    return list.isEmpty ? null : list.first;
  }

  T? tryGet(int index) {
    try {
      return toList()[index];
    }
    catch (e) {
      return null;
    }
  }
}