const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

async function main() {
    const newUser = await prisma.user.create({
        data: {
            email: "jackshone93@gmail.com",
            password:
                "$2a$10$k9GC.zr3rFcGcciSz1BK3uQSDIhva15zX07Miy03FWNiltZokdUMm",
            forename: "Jack",
            surname: "Shone",
        },
    });

    console.log("User created:", newUser);
}

main()
    .catch((e) => {
        console.error(e);
    })
    .finally(async () => {
        await prisma.$disconnect();
    });
