import { Router } from "express";
import { getScores, postScore, getUserScores } from "../controllers/scores.controllers.js";

const router = Router();

router.get("/scores", getScores);
router.get("/scores/:userId", getUserScores);
router.post("/scores", postScore);

export default router; 