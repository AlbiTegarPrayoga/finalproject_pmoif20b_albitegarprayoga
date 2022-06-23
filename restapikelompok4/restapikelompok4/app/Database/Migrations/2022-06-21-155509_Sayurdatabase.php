<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Sayurdatabase extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'idsayur' => [
            'type' => 'INT',
            'constraint' => 11,
            'unsigned' => TRUE,
            'auto_increment' => TRUE,
            ],
            'namasayur' => [
            'type' => 'VARCHAR',
            'constraint' => 100,
            ],
            'tutorialsayur' => [
            'type' => 'TEXT'
            ],
            'manfaatsayur' => [
            'type' => 'TEXT'
            ],
            


        ]);
            $this->forge->addKey('idsayur', TRUE);
            $this->forge->createTable('sayur');
            }
            public function down()
            {
            $this->forge->dropTable('sayur');
            }
        }