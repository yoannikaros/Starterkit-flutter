import 'package:flutter/material.dart';
import 'cariBarang.dart';
import 'package:tokolina/Services/barang/apiserviceBarang.dart';
import 'package:tokolina/model/barangModels.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../operation/add.dart';
import '../operation/edit.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //make list variable to accomodate all data from database

  FetchUserList _userList = FetchUserList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Barang'),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: SearchUser());
              },
              icon: Icon(Icons.search_sharp),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: FutureBuilder<List<DataBarang>>(
              future: _userList.getuserList(),
              builder: (context, snapshot) {
                var data = snapshot.data;
                return ListView.builder(
                    itemCount: data?.length,
                    itemBuilder: (context, index) {
                      if (!snapshot.hasData) {
                        return Center(child: CircularProgressIndicator());
                      }
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              //routing into edit page
                              //we pass the id note
                              MaterialPageRoute(
                                  builder: (context) => Edit(
                                      kode_item: '${data?[index].kodeItem}')));
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurpleAccent,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '${data?[index].kodeItem}',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${data?[index].barang}',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          '${data?[index].jenis}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ])
                                ],
                              ),
                              // trailing: Text('More Info'),
                            ),
                          ),
                        ),
                      );
                    });
              }),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
                context,
                //routing into add page
                MaterialPageRoute(builder: (context) => Add()));
          },
        ),
      ),
    );
  }
}
