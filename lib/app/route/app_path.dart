enum AppPath {
  home,
  second,
}

extension AppPathExtension on AppPath {
  String get toPath {
    switch (this) {
      case AppPath.second:
        return '/second';
      case AppPath.home:
      default:
        return '/';
    }
  }

  String get toLabel {
    switch (this) {
      case AppPath.second:
        return 'Second';
      case AppPath.home:
      default:
        return 'Home';
    }
  }
}
