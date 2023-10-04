import { defineConfig } from "vite";
import { fileURLToPath } from "url";
import path from "path";

export default ({ mode }: { mode: string }) => {
  const isProduction = mode === "production";

  return defineConfig({
    root: "./src",
    base: isProduction ? "/themes/halo-theme-vno/assets/dist/" : "",
    define: {
      "process.env": process.env,
    },
    build: {
      manifest: true,
      minify: isProduction,
      rollupOptions: {
        input: path.resolve(__dirname, "src/main.ts"),
        output: {
          entryFileNames: "[name].js",
          chunkFileNames: "[name].js",
          assetFileNames: "[name][extname]",
        },
      },
      outDir: fileURLToPath(new URL("./templates/assets/dist", import.meta.url)),
      emptyOutDir: true,
    },
    server: {
      origin: "http://localhost:5173",
    },
  });
};
