<?php

namespace App\Controllers;

use App\Renders\ApiView;
use Slim\Http\Request;
use Slim\Http\Response;
use Psr\Log\LoggerInterface;

final class Balance{
    private $view;
    private $logger;
    private $db;

    public function __construct(ApiView $view, LoggerInterface $logger, $cdb)
    {
        $this->view = $view;
        $this->logger = $logger;
        $this->db = $cdb;
    }

    public function userBalance(Request $request, Response $response){
        
    }
}