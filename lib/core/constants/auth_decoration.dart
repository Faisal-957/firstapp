import 'package:first_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

final authDecoration = InputDecoration(
  hintText: "",
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(width: 1, color: borderColor),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(width: 1, color: borderColor),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(width: 1, color: borderColor),
  ),
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(width: 1, color: borderColor),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(width: 1, color: borderColor),
  ),
);
