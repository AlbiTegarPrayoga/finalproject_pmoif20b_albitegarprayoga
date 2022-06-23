<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Buahdatabase extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'idbuah' => [
            'type' => 'INT',
            'constraint' => 11,
            'unsigned' => TRUE,
            'auto_increment' => TRUE,
            ],
            'namabuah' => [
            'type' => 'VARCHAR',
            'constraint' => 100,
            ],
            'tutorialbuah' => [
            'type' => 'TEXT'
            ],
            'manfaatbuah' => [
            'type' => 'TEXT'
            ],
            


        ]);
            $this->forge->addKey('idbuah', TRUE);
            $this->forge->createTable('buah');
            }
            public function down()
            {
            $this->forge->dropTable('buah');
            }
        }