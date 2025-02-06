import { PrismaClient } from '@prisma/client'
import { log } from 'console'

const prisma = new PrismaClient({ log: ['query'] }) // log all queries

async function main() {
  const users = await prisma.user.deleteMany()
  log(users)
}

main()
  .catch((e) => {
    throw e
  })
  .finally(async () => {
    await prisma.$disconnect()
  })
