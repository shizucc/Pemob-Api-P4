<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\RESTful\ResourceController;

class RestfulController extends ResourceController
{
    protected $format = 'json';
    
    protected function responseHasil($code, $status, $data)
        {
        return $this->respond([
        'code' => $code,
        'status' => $status,
        'data' => $data
        ]);

        }
}
