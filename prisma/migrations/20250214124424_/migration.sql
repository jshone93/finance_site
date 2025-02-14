-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserFinancials" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "cash" DOUBLE PRECISION NOT NULL,
    "property" DOUBLE PRECISION NOT NULL,
    "debt" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "UserFinancials_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_username_key" ON "User"("username");

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- AddForeignKey
ALTER TABLE "UserFinancials" ADD CONSTRAINT "UserFinancials_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
