import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import CcgSubmitButton from "./CcgSubmitButton";

createRoot(document.getElementById("ccg-submit-button-root")!).render(
	<StrictMode>
		<CcgSubmitButton />
	</StrictMode>
)