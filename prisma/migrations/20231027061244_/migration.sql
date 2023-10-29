/*
  Warnings:

  - You are about to drop the column `cateSlug` on the `Product` table. All the data in the column will be lost.
  - Added the required column `catSlug` to the `Product` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Product" DROP CONSTRAINT "Product_cateSlug_fkey";

-- AlterTable
ALTER TABLE "Product" DROP COLUMN "cateSlug",
ADD COLUMN     "catSlug" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_catSlug_fkey" FOREIGN KEY ("catSlug") REFERENCES "Category"("slug") ON DELETE RESTRICT ON UPDATE CASCADE;
