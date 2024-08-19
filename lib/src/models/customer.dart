part of 'models.dart';

class Customer extends Equatable {
  final User? user;
  final MemberPlan? memberPlan;
  final DateTime? enrolledAt;
  final DateTime? expiredAt;

  Customer({
    this.user,
    this.memberPlan,
    this.enrolledAt,
    this.expiredAt,
  });

  factory Customer.fromJson(Map<String, dynamic> data) => Customer(
        user: User.fromJson(data['user']),
        memberPlan: MemberPlan.fromJson(data['member_plan']),
        enrolledAt: DateTime.parse(data['enrolled_at']),
        expiredAt: DateTime.parse(data['expired_at']),
      );

  @override
  List<Object> get props => [
        user ?? User(),
        memberPlan ?? MemberPlan(),
        enrolledAt ?? '',
        expiredAt ?? '',
      ];

  Customer copyWith({
    User? user,
    MemberPlan? memberPlan,
    DateTime? enrolledAt,
    DateTime? expiredAt,
  }) =>
      Customer(
        user: user ?? this.user,
        memberPlan: memberPlan ?? this.memberPlan,
        enrolledAt: enrolledAt ?? this.enrolledAt,
        expiredAt: expiredAt ?? this.expiredAt,
      );

}