import nodemailer from 'nodemailer'
import { google } from 'googleapis';
import { error } from 'console';

const oAuth2Client = new google.auth.OAuth2(
    process.env.CLIENT_ID,
    process.env.CLIENT_SECRET
);

oAuth2Client.setCredentials({ refresh_token: process.env.REFRESH_TOKEN });

export const sendReferralMail = async ({ refereeEmail, refereeName, refererEmail, refererName }) => {
    try {
        const transport = nodemailer.createTransport({
            service: 'gmail',
            auth: {
                type: 'OAuth2',
                user: process.env.EMAIL,
                pass: process.env.PASSWORD,
                clientId: process.env.CLIENT_ID,
                clientSecret: process.env.CLIENT_SECRET,
                refreshToken: process.env.REFRESH_TOKEN
            },
        });

        transport.sendMail({
            from: `${refererEmail}`,
            to: `${refereeEmail}`,
            subject: 'REFERAL MESSAGE',
            text: `H ${refereeName} you've got a referral from ${refererName}`
        }, (err) => {
            try {
                if (err) throw Error

                console.log('message sent')
            }
            catch (error) {
                console.log(error)
            }
        });

    } catch (error) {
        console.log(error);
    }

}