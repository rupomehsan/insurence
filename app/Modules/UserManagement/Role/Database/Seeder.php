<?php

namespace App\Modules\UserManagement\Role\Database;

use Illuminate\Database\Seeder as SeederClass;

class Seeder extends SeederClass
{
    /**
     * Run the database seeds.
     php artisan db:seed --class="\App\Modules\UserManagement\Role\Database\Seeder"
     */
    static $model = \App\Modules\UserManagement\Role\Models\Model::class;
    public function run(): void
    {

        self::$model::truncate();

        self::$model::create([
            'name' => 'admin',
        ]);
        self::$model::create([
            'name' => 'user',
        ]);
        
    }
}
