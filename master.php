<?php

include "koneksi.php";

// Menentukan metode request
$method = $_SERVER['REQUEST_METHOD'];

header('Content-Type: application/json');

switch($method) {
    case 'GET':
        $sql = "SELECT * FROM wisatasemaranglo";
        $stmt = $pdo->query($sql);
        $wisatasemaranglo = $stmt->fetchAll();
        echo json_encode($wisatasemaranglo);
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->nama) && isset($data->alamat) && isset($data->harga)) {
            $sql = "INSERT INTO wisatasemaranglo (nama, alamat, harga) VALUES (?, ?, ?)";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->nama, $data->alamat, $data->harga]);
            echo json_encode(['message' => 'wisatasemaranglo berhasil ditambahkan']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'PUT':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->id) && isset($data->nama) && isset($data->alamat) && isset($data->harga)) {
            $sql = "UPDATE wiatasemaranglo SET nama=?, alamat=?, harga=? WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->nama, $data->alamat, $data->harga, $data->id]);
            echo json_encode(['message' => 'wisatasemaranglo berhasil diperbarui']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'DELETE':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->id)) {
            $sql = "DELETE FROM karyawan WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->id]);
            echo json_encode(['message' => 'wisatasemaranglo berhasil dihapus']);
        } else {
            echo json_encode(['message' => 'ID tidak ditemukan']);
        }
        break;

    default:
        echo json_encode(['message' => 'Metode tidak dikenali']);
        break;
}

?>
