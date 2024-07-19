/*
  Warnings:

  - You are about to drop the column `email` on the `referer` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `referer` table. All the data in the column will be lost.
  - You are about to drop the `referee` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `refereeemail` to the `Referer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `refereename` to the `Referer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `refereremail` to the `Referer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `referername` to the `Referer` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `referer` DROP COLUMN `email`,
    DROP COLUMN `name`,
    ADD COLUMN `refereeemail` VARCHAR(191) NOT NULL,
    ADD COLUMN `refereename` VARCHAR(191) NOT NULL,
    ADD COLUMN `refereremail` VARCHAR(191) NOT NULL,
    ADD COLUMN `referername` VARCHAR(191) NOT NULL;

-- DropTable
DROP TABLE `referee`;
