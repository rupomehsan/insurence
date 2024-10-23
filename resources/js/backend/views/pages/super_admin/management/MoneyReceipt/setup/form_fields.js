export default [


	{
		name: "issuing_office",
		label: "Enter your issuing office",
		type: "text",
		value: "",
	},
	{
		name: "class_of_insurance",
		label: "Select your class of insurance",
		type: "select",
		value: "",
        data_list: [

            {
                label: "Motor",
                value: "Motor",
            },
            {
                label: "Fire",
                value: "Fire",
            },
            {
                label: "Marine Cargo",
                value: "Marine_Cargo",
            },
            {
                label: "Marine Hull",
                value: "Marine_Hull",
            },
            {
                label: "Miscellaneous",
                value: "Miscellaneous",
            },
        ]
	},
	{
		name: "received_from",
		label: "Enter your received from",
		type: "text",
		value: "",
	},

	{
		name: "amount_received",
		label: "Enter your amount received",
		type: "number",
		value: "",
	},

	{
		name: "stamp_cost",
		label: "Enter your stamp cost",
		type: "number",
		value: "",
	},
	{
		name: "payment_method",
		label: "Enter your Mode of Payment",
		type: "text",
		value: "",
	},

	{
		name: "mode_of_payment_date",
		label: "Enter your Mode of payment date",
		type: "date",
		value: "",
	},
	{
		name: "down_on_payment",
		label: "Enter your down on payment",
		type: "text",
		value: "",
	},
	{
		name: "issued_against",
		label: "Enter your issued against",
		type: "text",
		value: "",
	},
	{
		name: "created_at",
		label: "Select your date",
		type: "date",
		value: "",
	},



];
