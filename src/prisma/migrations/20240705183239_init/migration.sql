/*
  Warnings:

  - You are about to drop the `referer` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `referer`;

-- CreateTable
CREATE TABLE `Referrals` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `referername` VARCHAR(191) NOT NULL,
    `refereremail` VARCHAR(191) NOT NULL,
    `refereename` VARCHAR(191) NOT NULL,
    `refereeemail` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
