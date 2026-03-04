export type CcgSubmitButtonProps = {
	dataProductFormId: string
};

export default function CcgSubmitButton({ dataProductFormId }: CcgSubmitButtonProps) {
	
	
	const addGuidAndSubmit = (formdata: any) => {
	
		const form =
			document.querySelector('[data-product-form]') ||
			document.querySelector('form[action^="/cart/add"]');

		if(!form)
			throw new Error("Couldn't find the form");

		const formData = new FormData(form as HTMLFormElement);
	
		

		submit(formdata)
			.then(() => {
				console.log("I did it!");
			})
			.catch((err) => {
				console.error("I messed up", err);
			})
	};

	const submit = async (formdata: any) => {
		const response = await fetch("/cart/add.js", {
			method: "POST",
			body: formdata,
			headers: {
				"Accept": "application/json"
			}
		});
	}

	return (
		<div>
			<button
				onClick={addGuidAndSubmit}
			>Submit</button>
		</div>
	)
}