import figlet from "figlet";

const server = Bun.serve({
  fetch() {
    const body = figlet.textSync("Nuclei Investigation", {font: "Swamp Land"});
    return new Response(body);
  },
  port: 3000,
});