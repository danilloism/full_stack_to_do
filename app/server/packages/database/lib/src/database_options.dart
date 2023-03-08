class DatabaseOptions {
  const DatabaseOptions({
    required this.host,
    required this.port,
    required this.name,
    required this.username,
    required this.password,
  });

  final String host;
  final int port;
  final String name;
  final String username;
  final String password;
}
