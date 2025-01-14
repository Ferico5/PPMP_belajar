class GameParam {
  final int? id;
  final String name;
  final String price;
  final String? status;

  GameParam({required this.id, required this.name, required this.price, required this.status});
  Map<String, dynamic> toJson() {
    return {
      'name': this.name,
      'price': this.price,
      'status': this.status
    };
  }
}