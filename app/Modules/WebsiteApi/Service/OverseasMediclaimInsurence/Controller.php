<?php

namespace App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence;


use App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Actions\IntialDataStore;
use App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Actions\OrderDetails;
use App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Actions\MoneryReceiptDetails;
use App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Actions\getAllUserPolicies;
use App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Actions\getUserSinglePolicy;
use App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Actions\UpdatePolicy;


use App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Validations\Validation;

use App\Http\Controllers\Controller as ControllersController;


class Controller extends ControllersController
{



    public function IntialDataStore(Validation $request)
    {
        $data = IntialDataStore::execute($request);
        return $data;
    }
    public function UpdatePolicy(Validation $request,$id)
    {
        $data = UpdatePolicy::execute($request,$id);
        return $data;
    }
    public function OrderDetails($orderId)
    {
        $data = OrderDetails::execute($orderId);
        return $data;
    }
    public function getUserSinglePolicy($id)
    {
        $data = getUserSinglePolicy::execute($id);
        return $data;
    }
    public function MoneryReceiptDetails($mrpNo)
    {
        $data = MoneryReceiptDetails::execute($mrpNo);
        return $data;
    }
    public function getAllUserPolicies()
    {
        $data = getAllUserPolicies::execute();
        return $data;
    }
}
