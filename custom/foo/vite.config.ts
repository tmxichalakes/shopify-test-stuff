import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vite.dev/config/
export default defineConfig({
	plugins: [react()],
	build: {
		outDir: "../assets/",
    	emptyOutDir: false, // Don't delete the output directory
		rollupOptions: {
			input: './foo/src/main.tsx',
			output: {
				entryFileNames: 'foo.js',
				assetFileNames: 'foo.css'
			}
    	}
	} 
})
