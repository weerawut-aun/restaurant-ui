import { prisma } from "@/utils/connect";
import { NextRequest, NextResponse } from "next/server";

// FETCH ALL CATEGORIES
export const GET = async (req: NextRequest) => {
  try {
    const categoies = await prisma.category.findMany();
    return new NextResponse(JSON.stringify(categoies), { status: 200 });
  } catch (err) {
    console.log(err);
    return new NextResponse(
      JSON.stringify({ message: "Something went wrong" }),
      { status: 500 }
    );
  }
};

export const POST = () => {
  return new NextResponse("Hello", { status: 200 });
};
