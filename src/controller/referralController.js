
import { PrismaClient } from '@prisma/client'
import { sendReferralMail } from '../lib/nodemailer.js'
import * as EmailValidator from 'email-validator';

const prisma = new PrismaClient()


export const getReferrals = async (req, res) => {

    try {
        const referrals = await prisma.referrals.findMany()
        if (referrals.length === 0 || referrals.length === null) { res.json({ status: "empty" }) }
        else {
            console.log(referrals)
            res.json(referrals)
        }
    } catch (error) {
        console.log(error)
    } finally {
        prisma.$disconnect()

    }
}
export const addreferral = async (req, res) => {
    try {
        const { refererName, refererEmail, refereeName, refereeEmail } = req.body
        if (EmailValidator.validate(refereeEmail)) {

            await sendReferralMail({ refereeEmail, refereeName, refererEmail, refererName })
            const status = await prisma.referrals.create({
                data: {
                    referee_email: refereeEmail,
                    referee_name: refereeName,
                    referer_email: refererEmail,
                    referer_name: refererName
                }
            })
            res.json({
                status: 'ok',
                data: status
            })
        }
        else {
            res.json({ status: "email not valid" })
        }



    }


    catch (error) {
        console.log(error)
    }
}