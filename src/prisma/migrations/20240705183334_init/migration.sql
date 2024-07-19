/*
  Warnings:

  - You are about to drop the column `refereeemail` on the `referrals` table. All the data in the column will be lost.
  - You are about to drop the column `refereename` on the `referrals` table. All the data in the column will be lost.
  - You are about to drop the column `refereremail` on the `referrals` table. All the data in the column will be lost.
  - You are about to drop the column `referername` on the `referrals` table. All the data in the column will be lost.
  - Added the required column `referee_email` to the `Referrals` table without a default value. This is not possible if the table is not empty.
  - Added the required column `referee_name` to the `Referrals` table without a default value. This is not possible if the table is not empty.
  - Added the required column `referer_email` to the `Referrals` table without a default value. This is not possible if the table is not empty.
  - Added the required column `referer_name` to the `Referrals` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `referrals` DROP COLUMN `refereeemail`,
    DROP COLUMN `refereename`,
    DROP COLUMN `refereremail`,
    DROP COLUMN `referername`,
    ADD COLUMN `referee_email` VARCHAR(191) NOT NULL,
    ADD COLUMN `referee_name` VARCHAR(191) NOT NULL,
    ADD COLUMN `referer_email` VARCHAR(191) NOT NULL,
    ADD COLUMN `referer_name` VARCHAR(191) NOT NULL;
