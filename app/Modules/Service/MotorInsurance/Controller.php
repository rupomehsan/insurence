<?php

namespace App\Modules\Service\MotorInsurance;

use App\Modules\Service\MotorInsurance\Actions\All;
use App\Modules\Service\MotorInsurance\Actions\Destroy;
use App\Modules\Service\MotorInsurance\Actions\Show;
use App\Modules\Service\MotorInsurance\Actions\Store;
use App\Modules\Service\MotorInsurance\Actions\Update;
use App\Modules\Service\MotorInsurance\Actions\SoftDelete;
use App\Modules\Service\MotorInsurance\Actions\Restore;
use App\Modules\Service\MotorInsurance\Actions\Import;
use App\Modules\Service\MotorInsurance\Validations\BulkActionsValidation;
use App\Modules\Service\MotorInsurance\Validations\GetAllValidation;
use App\Modules\Service\MotorInsurance\Validations\Validation;
use App\Modules\Service\MotorInsurance\Actions\BulkActions;
use App\Http\Controllers\Controller as ControllersController;


class Controller extends ControllersController
{

    public function index(GetAllValidation $request)
    {
        $data = All::execute($request);
        return $data;
    }

    public function store(Validation $request)
    {
        $data = Store::execute($request);
        return $data;
    }

    public function show($slug)
    {
        $data = Show::execute($slug);
        return $data;
    }

    public function update(Validation $request, $slug)
    {
        $data = Update::execute($request, $slug);
        return $data;
    }

    public function softDelete()
    {
        $data = SoftDelete::execute();
        return $data;
    }
    public function destroy($slug)
    {
        $data = Destroy::execute($slug);
        return $data;
    }
    public function restore()
    {
        $data = Restore::execute();
        return $data;
    }
    public function import()
    {
        $data = Import::execute();
        return $data;
    }
    public function bulkAction(BulkActionsValidation $request)
    {
        $data = BulkActions::execute($request);
        return $data;
    }

}