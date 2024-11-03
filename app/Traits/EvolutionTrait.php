<?php

namespace App\Traits;

use GuzzleHttp\Client;

trait EvolutionTrait
{
    public function prepareDataEvolution(){
        $this->baseUrl = "https://evo.localizadordeeditais.com.br";
        $this->apiKey = env('EVO_API_KEY');
        $this->accountName = env('EVO_ACCOUNT_NAME');
        $this->client = new Client();
    }

    public function sendTenderNotification($number, $documentName)
    {
        try {
            $this->prepareDataEvolution();
            $url = $this->baseUrl . "/message/sendText/{$this->accountName}";
    
            $text = "⚠️ Alerta de expiração de documento\n\n";
            $text.="O documento $documentName expira hoje!";

            $data = [
                'headers' => [
                    'apiKey' => $this->apiKey,
                ],
                'json' => [ 
                    'number' => $number,
                    'text' => $text,
                ]
            ];
    
            $response = $this->client->request('POST', $url, $data);
    
            $statusCode = $response->getStatusCode();
            $bodyContent = $response->getBody()->getContents();
            
            return ['status' => true, 'data' => ['statusCode' => $statusCode, 'bodyContent' => $bodyContent]];
    
        } catch (\Exception $e) {
            return ['status' => false, 'error' => $e->getMessage()];
        }
    }
}