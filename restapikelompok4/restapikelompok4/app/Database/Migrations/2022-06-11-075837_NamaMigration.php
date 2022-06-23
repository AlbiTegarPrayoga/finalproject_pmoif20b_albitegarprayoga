<?php
namespace App\Database\Migrations;
class Users extends \CodeIgniter\Database\Migration
{
    public function up()
{
    $this->forge->addField([
    'id' => [
    'type' => 'INT',
    'constraint' => 11,
    'unsigned' => TRUE,
    'auto_increment' => TRUE,
    ],
    'username' => [
    'type' => 'VARCHAR',
    'constraint' => 100,
    ],
    'email' => [
    'type' => 'VARCHAR',
    'constraint' => 100,
    ],
    'password' => [
    'type' => 'VARCHAR',
    'constraint' => 100,
    ],
    'alamat' => [
    'type' => 'VARCHAR',
    'constraint' => 100,
    ],
    'role' => [
    'type' => 'INT',
    'constraint' => 1,
    'default' => 2,
    ]
    ]);
    $this->forge->addKey('id', TRUE);
    $this->forge->createTable('users');
    }
    public function down()
    {
    $this->forge->dropTable('users');
    }
}