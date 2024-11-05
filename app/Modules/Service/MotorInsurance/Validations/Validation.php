<?php

namespace App\Modules\Service\MotorInsurance\Validations;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Validation\Rule;

class Validation extends FormRequest
{
    /**
     * Determine if the  is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }
    /**
     * validateError to make this request.
     */
    public function validateError($data)
    {
        $errorPayload =  $data->getMessages();
        return response(['status' => 'validation_error', 'errors' => $errorPayload], 422);
    }

    protected function failedValidation(Validator $validator)
    {
        throw new HttpResponseException($this->validateError($validator->errors()));
        if ($this->wantsJson() || $this->ajax()) {
            throw new HttpResponseException($this->validateError($validator->errors()));
        }
        parent::failedValidation($validator);
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'name' => 'required | sometimes',
            'mobile_number' => 'required | sometimes',
            'registration_no' => 'required | sometimes',
            'engine_no' => 'required | sometimes',
            'chassis_no_manufacturer' => 'required | sometimes',
            'upload_registration_copy' => 'required | sometimes',
            'plan_type' => 'required | sometimes',
            'capacity' => 'required | sometimes',
            'insurance_start_date' => 'required | sometimes',
            'motor_price' => 'required | sometimes',
            'motor_type' => 'required | sometimes',
            'make_year' => 'required | sometimes',
            'premium_cost' => 'required | sometimes',
            'vat' => 'required | sometimes',
            'total_cost' => 'required | sometimes',
            'status' => ['sometimes', Rule::in(['active', 'inactive'])],
        ];
    }
}
