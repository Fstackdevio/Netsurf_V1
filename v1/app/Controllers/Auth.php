<?php
namespace App\Controllers;
require BASE_PATH . '/dbhandler/util/functions.php';

use App\Renders\ApiView;
use Slim\Http\Request;
use Slim\Http\Response;
use Psr\Log\LoggerInterface;

final class Auth {
    private $view;
    private $logger;
    private $DBcon;
    private $session;
    private $phash;

    public function __construct(ApiView $view, LoggerInterface $logger, $cdb, $sess, $phash){
        $this->view = $view;
        $this->logger = $logger;
        $this->DBcon = $cdb;
        $this->session = $sess;
        $this->phash = $phash;
    } 

    public function test(Request $request, Response $response, $args){
        $input = $request->getParsedBody();
        $uEmail = htmlspecialchars($input['username']);
        $uPass = htmlspecialchars($input['password']);

        $message = ['message' => "You're already logged in!", 'data' => $uEmail];
        return $this->view->render($request, $response, $message, 401);
    }

   public function login(Request $request, Response $response, $args){
        $input = $request->getParsedBody();
        $uEmail = htmlspecialchars($input['username']);
        $uPass = htmlspecialchars($input['password']);

        $verifyParams = $this->verifyRequiredParams($input, array('username', 'password'));        
        if($verifyParams['e']){
            $data = ['message' => substr($verifyParams['m'], 0, -2)];
            return $this->view->render($request, $response, $data, 401);
        }

        $message = ['message' => "You're already logged in!", 'data' => $uEmail];
        return $this->view->render($request, $response, $message, 401);
   }

   public function logout(Request $request, Response $response, $args){
        $exists = $this->session->exists('u');
        $currentUser = $this->session->get('u')['username'];

        if($exists){
            $this->session::destroy();
            $data = ['message' => "Logout Successful."];
        } else {
            $data = ['message' => "An unexpected error occurred while logging out."];
            return $this->view->render($request, $response, $data, 401);
        }
        return $this->view->render($request, $response, $data, 200);
    }
}
