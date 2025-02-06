/*
  Warnings:

  - You are about to drop the `userPreferences` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[userPreferencesId]` on the table `User` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "userPreferences" DROP CONSTRAINT "userPreferences_userId_fkey";

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "userPreferencesId" TEXT;

-- DropTable
DROP TABLE "userPreferences";

-- CreateTable
CREATE TABLE "UserPreferences" (
    "preferenceId" TEXT NOT NULL,
    "theme" TEXT NOT NULL,

    CONSTRAINT "UserPreferences_pkey" PRIMARY KEY ("preferenceId")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_userPreferencesId_key" ON "User"("userPreferencesId");

-- AddForeignKey
ALTER TABLE "User" ADD CONSTRAINT "User_userPreferencesId_fkey" FOREIGN KEY ("userPreferencesId") REFERENCES "UserPreferences"("preferenceId") ON DELETE SET NULL ON UPDATE CASCADE;
