<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Tanamanlaindatabase extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'idtanamanlain' => [
            'type' => 'INT',
            'constraint' => 11,
            'unsigned' => TRUE,
            'auto_increment' => TRUE,
            ],
            'namatanamanlain' => [
            'type' => 'VARCHAR',
            'constraint' => 100,
            ],
            'tutorialtanamanlain' => [
            'type' => 'TEXT'
            ],
            'manfaattanamanlain' => [
            'type' => 'TEXT'
            ],
            


        ]);
            $this->forge->addKey('idtanamanlain', TRUE);
            $this->forge->createTable('tanamanlain');
            }
            public function down()
            {
            $this->forge->dropTable('tanamanlain');
            }
        }
