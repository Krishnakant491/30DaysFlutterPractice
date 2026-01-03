import 'package:flutter/material.dart';

class RecentOrdersCard extends StatelessWidget {
  const RecentOrdersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Recent Orders",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          /// HEADER
          _headerRow(),
          const Divider(),

          /// ORDERS
          _orderRow(
            name: "Michael Smith",
            price: "\$59.99",
            status: OrderStatus.completed,
            time: "1 min ago",
          ),
          _orderRow(
            name: "Jessica Chen",
            price: "\$59.99",
            status: OrderStatus.pending,
            time: "8 min ago",
          ),
          _orderRow(
            name: "David Lee",
            price: "\$199.99",
            status: OrderStatus.pending,
            time: "6 min ago",
          ),
          _orderRow(
            name: "Emily Johnson",
            price: "\$199.00",
            status: OrderStatus.refunded,
            time: "5 min ago",
          ),
          _orderRow(
            name: "Daniel Martinez",
            price: "\$199.00",
            status: OrderStatus.refunded,
            time: "6 min ago",
          ),
        ],
      ),
    );
  }

  /// Header row
  Widget _headerRow() {
    return Row(
      children: const [
        Expanded(
          flex: 3,
          child: Text("Customer", style: TextStyle(color: Colors.grey)),
        ),
        Expanded(
          flex: 2,
          child: Text("Price", style: TextStyle(color: Colors.grey)),
        ),
        Expanded(
          flex: 2,
          child: Text("Status", style: TextStyle(color: Colors.grey)),
        ),
        Expanded(
          flex: 2,
          child: Text("Time", style: TextStyle(color: Colors.grey)),
        ),
      ],
    );
  }

  /// Single order row
  Widget _orderRow({
    required String name,
    required String price,
    required OrderStatus status,
    required String time,
  }) {
    final statusData = _statusMap[status]!;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          /// CUSTOMER
          Expanded(
            flex: 3,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.grey.shade300,
                  child: const Icon(Icons.person, size: 16),
                ),
                const SizedBox(width: 8),
                Text(name),
              ],
            ),
          ),

          /// PRICE
          Expanded(flex: 2, child: Text(price)),

          /// STATUS
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: statusData.color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                statusData.label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: statusData.color,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),

          /// TIME
          Expanded(
            flex: 2,
            child: Text(time, style: const TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}

/// STATUS ENUM
enum OrderStatus { completed, pending, refunded }

/// STATUS UI DATA
class _StatusUI {
  final String label;
  final Color color;

  const _StatusUI(this.label, this.color);
}

final Map<OrderStatus, _StatusUI> _statusMap = {
  OrderStatus.completed: _StatusUI("Completed", Colors.green),
  OrderStatus.pending: _StatusUI("Pending", Colors.orange),
  OrderStatus.refunded: _StatusUI("Refunded", Colors.blue),
};
