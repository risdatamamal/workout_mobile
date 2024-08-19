part of 'models.dart';

class MemberPlan extends Equatable {
  final int? id;
  final String? name;
  final String? description;
  final int? priceMonthly;
  final int? duration;
  final int? isActive;

  MemberPlan({
    this.id,
    this.name,
    this.description,
    this.priceMonthly,
    this.duration,
    this.isActive,
  });

  factory MemberPlan.fromJson(Map<String, dynamic> data) => MemberPlan(
        id: data['id'],
        name: data['name'],
        description: data['description'],
        priceMonthly: data['price_monthly'],
        duration: data['duration'],
        isActive: data['is_active'],
      );

  @override
  List<Object> get props => [
        id ?? 0,
        name ?? '',
        description ?? '',
        priceMonthly ?? 0,
        duration ?? 0,
        isActive ?? 0,
      ];

  MemberPlan copyWith({
    int? id,
    String? name,
    String? description,
    int? priceMonthly,
    int? duration,
    int? isActive,
  }) =>
      MemberPlan(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        priceMonthly: priceMonthly ?? this.priceMonthly,
        duration: duration ?? this.duration,
        isActive: isActive ?? this.isActive,
      );

}