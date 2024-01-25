<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;

use Illuminate\Support\Facades\DB;

class CustomerController extends Controller
{
    public function showRegistrationForm()
    {
        return view('register');
    }

    public function register(Request $request)
    {
        $validatedData = $request->validate([
            'first_name' => 'required|string',
            'last_name' => 'required|string',
            'email' => 'required|email|unique:customers',
            'password' => 'required|min:6',
        ]);

        $existingCustomer = Customer::where('email', $validatedData['email'])->first();

        if ($existingCustomer) {
            return response()->json([
                'message' => 'Customer already registered',
                'customer' => $existingCustomer,
            ], 200);
        }

        $newCustomer = Customer::create($validatedData);
        return response()->json([
            'message' => 'Customer registered successfully',
            'customer' => $newCustomer,
        ], 201);
    }
}
