<?php

namespace App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence;


use App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Actions\IntialDataStore;
use App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Actions\OrderDetails;
use App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Actions\MoneryReceiptDetails;


use App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Validations\Validation;

use App\Http\Controllers\Controller as ControllersController;


class Controller extends ControllersController
{



    public function IntialDataStore(Validation $request)
    {
        $data = IntialDataStore::execute($request);
        return $data;
    }
    public function OrderDetails($orderId)
    {
        $data = OrderDetails::execute($orderId);
        return $data;
    }
    public function MoneryReceiptDetails($mrpNo)
    {
        $data = MoneryReceiptDetails::execute($mrpNo);
        return $data;
    }
}
