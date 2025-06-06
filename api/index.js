import "dotenv/config";
import express from "express";
import morgan from "morgan";
import cors from "cors";
import indexRoutes from "./routes/index.routes.js";
import usersRoutes from "./routes/users.routes.js";
import scoresRoutes from "./routes/scores.routes.js";

console.log(process.env.HOST);

const app = express();

app.use(express.json());
app.use(morgan("dev"));
app.use(cors());

app.use(indexRoutes);
app.use(usersRoutes);
app.use(scoresRoutes);

const port = 5000;

app.listen(port, console.log("http://localhost:" + port));