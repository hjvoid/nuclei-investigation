import figlet from "figlet";

const server = Bun.serve({
  fetch() {
    const body = figlet.textSync("Nuclei \nInvestigation", {font: "Swamp Land"});
    return new Response(body);
  },
  port: 3000,
});