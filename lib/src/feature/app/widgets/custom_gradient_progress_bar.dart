import 'package:flutter/material.dart';

class RotatingProgressBar extends StatefulWidget {
  final double size; // Размер прогресс-бара
  final double strokeWidth; // Толщина линии прогресс-бара

  // Конструктор с параметрами размера и толщины
  const RotatingProgressBar({
    super.key,
    this.size = 200,
    this.strokeWidth = 10,
  });

  @override
  State<RotatingProgressBar> createState() => _RotatingProgressBarState();
}

class _RotatingProgressBarState extends State<RotatingProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          size: Size(widget.size, widget.size), // Используем внешний размер
          painter: CircularProgressPainter(
            _controller.value,
            strokeWidth: widget.strokeWidth, // Передаем толщину линии
          ),
        );
      },
    );
  }
}

class CircularProgressPainter extends CustomPainter {
  final double progress;
  final double strokeWidth;

  CircularProgressPainter(this.progress, {required this.strokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint backgroundPaint = Paint()
      ..color = Colors.grey.shade300
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    // Градиент для прогресса
    final Paint progressPaint = Paint()
      ..shader = const SweepGradient(
        colors: [Colors.blue, Colors.green],
        stops: [0.0, 1.0],
      ).createShader(Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2))
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // ignore: prefer_const_declarations
    final double startAngle = -3.14 / 2; // Начальный угол
    final double sweepAngle = 3.14 * 2 * progress; // Угол, через который прогресс двигается

    final Rect rect = Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2);

    // Рисуем фон
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2, backgroundPaint);

    // Рисуем прогресс с градиентом
    canvas.drawArc(rect, startAngle, sweepAngle, false, progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
