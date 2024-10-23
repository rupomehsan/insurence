<?php

namespace App\Modules\WebsiteApi\Service\Motor;

use App\Modules\WebsiteApi\Service\Motor\Actions\All;
use App\Modules\WebsiteApi\Service\Motor\Actions\Delete;
use App\Modules\WebsiteApi\Service\Motor\Actions\Show;
use App\Modules\WebsiteApi\Service\Motor\Actions\Store;
use App\Modules\WebsiteApi\Service\Motor\Actions\Update;
use App\Modules\WebsiteApi\Service\Motor\Validations\Validation;
use App\Modules\WebsiteApi\Service\Motor\Actions\BulkActions;
use App\Http\Controllers\Controller as ControllersController;


class Controller extends ControllersController
{

    public function index()
    {
        $data = All::execute();
        return $data;
    }

    public function store(Validation $request)
    {
        $data = Store::execute($request);
        return $data;
    }

    public function show($id)
    {
        $data = Show::execute($id);
        return $data;
    }

    public function update(Validation $request, $id)
    {
        $data = Update::execute($request, $id);
        return $data;
    }

    public function destroy($id)
    {
        $data = Delete::execute($id);
        return $data;
    }
    public function bulkAction()
    {
        $data = BulkActions::execute();
        return $data;
    }

}