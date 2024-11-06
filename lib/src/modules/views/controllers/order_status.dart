class OrderStatus {
  final String label;
  final bool isCompleted;
  final bool isCurrent;

  OrderStatus({
    required this.label,
    this.isCompleted = false,
    this.isCurrent = false,
  });
}
