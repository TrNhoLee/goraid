// ignore_for_file: file_names
import 'package:flutter/material.dart';

class InfoAccount extends StatefulWidget {
  const InfoAccount({Key? key}) : super(key: key);

  @override
  _InfoAccountState createState() => _InfoAccountState();
}

class _InfoAccountState extends State<InfoAccount> {
  //--------------------------------------------
  //Properties
  //--------------------------------------------

  //--------------------------------------------
  //Initialize
  //--------------------------------------------
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _createRepresentativeImage(),
        const SizedBox(height: 10),
        _createInfo()
      ],
    );
  }

  _createRepresentativeImage() {
    return Stack(
        // fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: [_createBackground(), _createAvatar()]);
  }

  _createBackground() {
    return Stack(
      children: [
        InkWell(
            onTap: _changeBackground,
            child: const SizedBox(
              height: 300,
              width: double.infinity,
              child: FlutterLogo(),
            )),
        Container(
          alignment: Alignment.bottomRight,
          width: double.infinity,
          height: 300,
          child: SizedBox(
            width: 50,
            height: 50,
            child: OutlinedButton(
              child: const Icon(Icons.camera_alt, color: Colors.black, size: 20),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white)),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }

  _createAvatar() {
    return Container(
      margin: const EdgeInsets.only(top: 200),
      child: InkWell(
          child: Container(
            width: 150,
            height: 150,
            margin: const EdgeInsets.all(15),
            child: Stack(
              children: [
                const FlutterLogo(size: 150),
                Container(
                  alignment: Alignment.bottomRight,
                  width: double.infinity,
                  height: 150,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: OutlinedButton(
                      child:
                          const Icon(Icons.camera_alt, color: Colors.black, size: 20),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.white, width: 5),
                borderRadius: BorderRadius.circular(100)),
          ),
          onTap: _changeAvatar),
    );
  }

  _createInfo() {
    return Column(
      children: [
        ListTile(
          leading: const SizedBox(width: 50),
          title: const Center(
              child: Text("Nho Le",
                  style: TextStyle(color: Colors.white, fontSize: 50))),
          trailing: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: _settingInfo,
          ),
        ),
        const SizedBox(height: 10),
        const Text("@nhonhinho000111", style: TextStyle(color: Colors.white)),
        const SizedBox(height: 10),
        const Text("2 followers - 4 people are following",
            style: TextStyle(color: Colors.white)),
      ],
    );
  }

  void _changeAvatar() {}

  void _changeBackground() {}

  void _settingInfo() {}
}
