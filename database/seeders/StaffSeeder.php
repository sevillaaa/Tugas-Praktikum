<?php

namespace Database\Seeders;

use App\Models\Staff;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class StaffSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Staff::factory(8)->create();
        // Staff::create([
        //     'id' => '1',
        //     'nip' => '231402058',
        //     'email' => 'sevilla.depari04@gmail.com',
        //     'nama' => 'Sevilla Claudia Depari',
        //     'tanggal_lahir' => '2004-09-25',
        //     'no_hp' => '08123456789'
        // ]);
    }
}
