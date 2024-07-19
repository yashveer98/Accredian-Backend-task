import express from "express";
import { addreferral, getReferrals } from "../controller/referralController.js";

export const router = express.Router();


router.get('/getreferrals', getReferrals)
router.post('/addreferral', addreferral)
