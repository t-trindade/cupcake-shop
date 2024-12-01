import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';

FFUploadedFile? convertBase64ToImage(String? base64String) {
  // convert base64 text in image
  if (base64String == null || base64String.isEmpty) {
    return null;
  }

  try {
    final decodedBytes = base64Decode(base64String);
    return FFUploadedFile(bytes: decodedBytes);
  } catch (e) {
    print('Error converting base64 to image: $e');
    return null;
  }
}

String? convertImageToBase64(FFUploadedFile? image) {
  // Verifica se a imagem ou os bytes são nulos
  if (image == null || image.bytes == null) {
    return null;
  }

  // Converte os bytes da imagem para uma string Base64
  try {
    String base64Image = base64Encode(image
        .bytes!); // Usa o operador "!" para garantir que os bytes não são nulos
    return base64Image;
  } catch (e) {
    // Retorna uma mensagem de erro em caso de falha
    return 'Error encoding image to Base64: $e';
  }
}
