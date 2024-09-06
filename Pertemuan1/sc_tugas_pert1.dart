import 'dart:io';

// Fungsi untuk menghitung BMI
double hitungBMI(double berat, double tinggi) {
  return berat / (tinggi * tinggi);
}

// Fungsi untuk menentukan kategori BMI
String kategoriBMI(double bmi, String gender) {
  if (bmi < 18.5) {
    return "Berat badan kurang";
  } else if (bmi >= 18.5 && bmi < 24.9) {
    return "Berat badan ideal";
  } else if (bmi >= 25 && bmi < 29.9) {
    return "Berat badan berlebih";
  } else {
    return "Obesitas";
  }
}

void main() {
  print("Masukkan jenis kelamin (pria/wanita): ");
  String? gender = stdin.readLineSync();

  print("Masukkan berat badan (kg): ");
  double berat = double.parse(stdin.readLineSync()!);

  print("Masukkan tinggi badan (m): ");
  double tinggi = double.parse(stdin.readLineSync()!);

  double bmi = hitungBMI(berat, tinggi);
  String kategori = kategoriBMI(bmi, gender!.toLowerCase());

  print("\nHasil:");
  print("BMI: ${bmi.toStringAsFixed(2)}");
  print("Kategori: $kategori");
}