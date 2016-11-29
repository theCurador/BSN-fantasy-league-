<?php namespace App\Http\Requests;



class ScoresRequest extends Request {

	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public function rules()
	{
		return [
			'match_id' => 'required|numeric',
		];
	}

}
