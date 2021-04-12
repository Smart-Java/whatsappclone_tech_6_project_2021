import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center WIdget'),
      ),
      body: Center(
        child: Text(
          'Center Widget',
          style: TextStyle(color: Colors.purple),
        ),
      ),
    );
  }
}

class AlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align WIdget'),
      ),
      body: Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: Text(
          'Align Widget',
          style: TextStyle(color: Colors.purple),
        ),
      ),
    );
  }
}

class SizedBOxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox WIdget'),
      ),
      body: SizedBox(
          width: 10.0,
          height: 20.0,
          child: Image.asset('asset/image/andriodDev.jpg')),
    );
  }
}

class SizedOverWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox WIdget'),
      ),
      body: SizedOverflowBox(
          size: Size(100.0, 100.0),
          child: Image.asset('asset/image/andriodDev.jpg')),
    );
  }
}

class LimitedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LimittedBox WIdget'),
      ),
      body: LimitedBox(
          maxWidth: 200.0,
          maxHeight: 100.0,
          child: Image.asset('asset/image/andriodDev.jpg')),
    );
  }
}

class FittedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox WIdget'),
      ),
      body: FittedBox(
          alignment: Alignment.center,
          fit: BoxFit.contain,
          child: Image.asset('asset/image/andriodDev.jpg')),
    );
  }
}

class RotatedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RotationBox WIdget'),
      ),
      body: RotatedBox(
        quarterTurns: 1,
        child: Image.asset('asset/image/andriodDev.jpg'),
      ),
    );
  }
}

class PaddingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding WIdget'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Padding Widget',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}

class TransformWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform WIdget'),
      ),
      body: Transform(
        transform: Matrix4.rotationX(12.0),
        alignment: Alignment.centerLeft,
        origin: Offset(10.0, 10.0),
        child: Text(
          'Padding Widget',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}

class AspectRatioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio WIdget'),
      ),
      body: SizedBox(
        height: 20.0,
        width: 40.0,
        child: AspectRatio(
          aspectRatio: 1.5,
          child: Image.asset('asset/image/andriodDev.jpg'),
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container WIdget'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: AspectRatio(
          aspectRatio: 1.5,
          child: Image.asset('asset/image/andriodDev.jpg'),
        ),
      ),
    );
  }
}

class FlexWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLex WIdget'),
      ),
      body: Flex(
        direction: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(child: Image.asset('asset/image/andriodDev.jpg')),
          Flexible(child: Image.asset('asset/image/andriodDev.jpg')),
          Expanded(child: Text('AspectRatio WIdget')),
        ],
      ),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLex WIdget'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(child: CircleAvatar(
                backgroundColor: Colors.white,child: Image.asset('asset/image/andriodDev.jpg'))),
            Flexible(child: Image.asset('asset/image/andriodDev.jpg')),
            Expanded(child: Text('AspectRatio WIdget')),
          ],
        ),
      ),
    );
  }
}

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack WIdget'),
      ),
      body: Stack(
        children: [
          Container(
              height: 200.0,
              width: 500.0,child: Image.asset('asset/image/andriodDev.jpg')),
          Positioned(
            bottom: 10.0,
            right: 5.0,
            child: Text('Stack WIdget'),
          ),
          Positioned(
            right: 10.0,
            top: 5.0,
            child: Text('Stack WIdget'),
          ),
        ],
      ),
    );
  }
}

class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget'),
      ),
      body: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.start,
        runSpacing: 2,
        spacing: 10,
        children: [
          Text('Wrap')
        ],
      ),
    );
  }
}


class CustomSingleChildLayout extends SingleChildLayoutDelegate{
  @override
  bool shouldRelayout(SingleChildLayoutDelegate oldDelegate) {
    return true;
  }

  @override
  Size getSize(BoxConstraints constraints) {
    // TODO: implement getSize
    return Size(100, 100);
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints(maxHeight: 100, maxWidth: 100, minHeight: 50, minWidth: 50);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(100, 100);
  }
}

