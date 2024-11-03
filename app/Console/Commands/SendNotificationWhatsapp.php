<?php

namespace App\Console\Commands;

use App\Models\Document;
use App\Models\User;
use App\Traits\EvolutionTrait;
use Carbon\Carbon;
use Illuminate\Console\Command;

class SendNotificationWhatsapp extends Command
{
    use EvolutionTrait;
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:send-notification-whatsapp';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $users = User::whereNotNull('phone_number')
            ->get();

        foreach($users as $user){
            $dueDocuments = Document::where('created_by', $user->id)
                ->whereDate('expiration_date', Carbon::now())
                ->get();

            if(!isset($dueDocuments) || !count($dueDocuments)) continue;
            
            foreach($dueDocuments as $document){
                $phone = $this->preparePhone($user->phone_number);
                $this->sendTenderNotification($phone, $document->name);
            }

        }
        return Command::SUCCESS;
    }

    private function preparePhone($phone)
    {
        $phone = preg_replace('/\D/', '', $phone);

        if (substr($phone, 0, 2) !== '55') {
            $phone = '55' . $phone;
        }

        return trim($phone);
    }
}
