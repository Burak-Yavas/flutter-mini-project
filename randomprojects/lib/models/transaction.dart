import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class Transaction
{
  //properties for make transaction
  @required final String id;
  @required final String title;
  @required final double amount;
  @required final DateTime date;

  //constructor
  Transaction({this.id,this.title,this.amount,this.date});

}