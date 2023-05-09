import express from "express";

const main = async () => {
  const app = express();

  app.get("/", (_, res) => {
    res.send("Hello World from Jesse Reed's Raspberry Pi. CS12");
  });

  app.listen(4000, () => {
    console.log(`🚀 Listening on port 4000`);
  });
};

main().catch((err) => {
  console.log(err);
});
