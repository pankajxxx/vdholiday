<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ApiController extends Controller
{
    public function index()
    {
        $firstName = 'Pankaj';
        $lastName = 'Jadhav';

        return response()->json([
            'message' => 'Hello, this is my first API!',
            'firstName' => $firstName,
            'lastName' => $lastName,
        ]);
    }
}
