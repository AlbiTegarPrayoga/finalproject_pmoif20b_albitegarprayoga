<?php
namespace App\Database\Seeds;
use CodeIgniter\Database\Seeder;
use \CodeIgniter\I18n\Time; //tambahkan ini jika menggunakan format time
class Users extends Seeder
{
public function run()
{
//lakukan perulangan data
for ($i = 0; $i < 1; $i++) {
$data = [
[
'username' => 'dzaky',
'email' => 'dzaky.ardiansyah03@gmail.com',
'password' => '123',
'alamat' => 'pwt',
'role' => '1',
]
];
// insert semua data ke tabel
$this->db->table('users')->insertBatch($data);
//singgle insert
//->insert($data);
//multiple insert
//->insertBatch($data);
}
}
}