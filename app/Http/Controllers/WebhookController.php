<?php

namespace App\Http\Controllers;

use App\Mail\WelcomeMail;
use App\Models\Category;
use App\Models\Document;
use App\Models\SubCategory;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class WebhookController extends Controller
{
    public function hotmart(Request $request){
        try{
            $buyer = $request['data']['buyer'];
    
            $fullName = explode(' ',$buyer['name']);
            
            $password = Str::random(20);
            
            $user = User::create([
                "first_name" => $fullName[0],
                "last_name" => $fullName[1] ?? '',
                "email" => $buyer['email'],
                "phone_number" => "",
                "password" => Hash::make($password),
                "type" => "employee",
                "profile" => "avatar.png",
                "lang" => "portuguese",
                "subscription" => 1,
                "parent_id" => 1,
            ]);

            $user->assignRole('employee');

            Mail::to($user->email)->send(new WelcomeMail($user->name, $user->email, $password));

            $files = [
                "HABILITAÇÃO JURIDICA",
                'Certidão JUCESP',
                'Certidão municipal',
                'Certificado de Registro Cadastral - CRC',
                'CCMEI',
                'Atestado de capacitação',
                'CNDT FGTS',
                'CNDT',
                'Inscricao Estadual'
            ];

            $category = Category::orderBy('id', 'desc')->first();
            $subCategory =SubCategory::orderBy('id', 'desc')->first();

            foreach($files as $file){
                Document::create([
                    "name" => $file,
                    "category_id" => $category->id ?? 1,
                    "sub_category_id" => $subCategory->id ?? 1,
                    "description" => "",
                    "tages" => "",
                    "created_by" => $user->id,
                    "parent_id" => $user->id,
                ]);
            }

            return ['status' => true, 'data' => "Usuário criado com sucesso!"];
        }catch(Exception $error){
            return ['status' => false, 'data' => null, "error" => $error->getMessage()];
        }
    }
}
