<?php

namespace App\Modules\OmiMoneyReceipt;

use App\Modules\OmiMoneyReceipt\Actions\All;
use App\Modules\OmiMoneyReceipt\Actions\Destroy;
use App\Modules\OmiMoneyReceipt\Actions\Show;
use App\Modules\OmiMoneyReceipt\Actions\Store;
use App\Modules\OmiMoneyReceipt\Actions\Update;
use App\Modules\OmiMoneyReceipt\Actions\SoftDelete;
use App\Modules\OmiMoneyReceipt\Actions\Restore;
use App\Modules\OmiMoneyReceipt\Actions\Import;
use App\Modules\OmiMoneyReceipt\Validations\BulkActionsValidation;
use App\Modules\OmiMoneyReceipt\Validations\GetAllValidation;
use App\Modules\OmiMoneyReceipt\Validations\Validation;
use App\Modules\OmiMoneyReceipt\Actions\BulkActions;
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