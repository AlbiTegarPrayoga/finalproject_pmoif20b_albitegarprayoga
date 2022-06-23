<?php
namespace App\Entities;
use CodeIgniter\Entity\Entity;
class Users extends Entity
{
    public function insert_user()
    {
            {
                global $mysqli;
                $arrcheckpost = array('username' => '', 'email' => '', 'password' => '', 'alamat' => '');
                $hitung = count(array_intersect_key($_POST, $arrcheckpost));
                if($hitung == count($arrcheckpost)){
                
                        $result = mysqli_query($mysqli, "INSERT INTO users SET
                        username = '$_POST[username]',
                        email = '$_POST[email]',
                        password = '$_POST[password]',
                        alamat = '$_POST[alamat]',");
                        
                        if($result)
                        {
                            $response=array(
                                'status' => 1,
                                'message' =>'user sukses ditambah.'
                            );
                        }
                        else
                        {
                            $response=array(
                                'status' => 0,
                                'message' =>'user Addition Failed.'
                            );
                        }
                }else{
                    $response=array(
                                'status' => 0,
                                'message' =>'Parameter Do Not Match'
                            );
                }
                header('Content-Type: application/json');
                echo json_encode($response);
            }
        }
}