/*
  Warnings:

  - You are about to drop the column `inten_id` on the `Order` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[intent_id]` on the table `Order` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "Order_inten_id_key";

-- AlterTable
ALTER TABLE "Order" DROP COLUMN "inten_id",
ADD COLUMN     "intent_id" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "Order_intent_id_key" ON "Order"("intent_id");
