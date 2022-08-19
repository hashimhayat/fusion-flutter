/// {@template FusionApiClient}
/// FusionApiClient API Client which wraps backend APIs.
/// {@endtemplate}
abstract class FusionApiClient {
  /// Creates a new user instance in the Fusion backend.
  Future<dynamic> createUser(String name, String email);

  /// Gets a user instance from the Fusion backend.
  Future<dynamic> getUser(String email);

  /// Creates a new squad instance in the Fusion backend.
  Future<dynamic> createSquad(
    String memberId,
    double percentage,
    String paymentMethodId,
  );

  /// Gets squad from the Fusion backend that a user is part of.
  Future<dynamic> getSquad(String id);
}
