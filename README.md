# <p align="center">Prisma Tutorial</p>

<br/>

## Development dependencies

- prisma
- typescript
- ts-node
  - A utility for directly running TypeScript files without needing to precompile them into JavaScript.It skips the step of generating .js files on disk. Instead, it compiles ( **using tsc under the hood** ) the TypeScript code in memory as it runs ( **on the fly precompilation** ), making it much faster.
  - Useful for quick testing and development
  - **_script_** : `"dev": "ts-node index.ts",`
- nodemon
- @types/node
  - provides type definations for node

> **_NOTE:_** Use of `--save-dev` flag

- The flag is used alongwith the install CLI command to install the package as a development dependency.
- On the other hand `--save` flag is used to install a package as a development dependency
- However, in newer version of npm flag is not required to installing a package as a development dependency.
- We must specify used for development purpose only as a development dependency during installation.

## Typescript configuration (tsconfig.json file)

- Execute ` npm tsc --init` command in the terminal
  - It will create the **tsconfig.json** file in the root with some default settings. Other settings are to be modified as per project requirement.

### Initial 'Typescript configuration' for the project

```sh
{
  "compilerOptions": {
   "target": "es2016",
   "lib": ["esnext"],
   "module": "commonjs",
   "sourceMap": true,
   "outDir": "dist",
   "esModuleInterop": true,
   "forceConsistentCasingInFileNames": true,
   "strict": true,
   "skipLibCheck": true,
  },
}

```

## Prisma Initialization

_Command :_ `npx prisma init --datasource-provider postgresql`

- `npx prisma init` command Initializes a new Prisma project by creating the following:
  - A prisma folder.
  - A schema.prisma file for defining your database schema.
  - It also adds a DATABASE_URL environment variable to your .env file.
- `--datasource-provider databaseProviderName` command specifies the Database to be used.
  - For example: `postgresql`
  - The specified database provider would be selected by default.
  - Setup your `DATABASE_URL` in the _.env_ file
    - `DATABASE_URL="postgresql://USER:PASSWORD@HOST:PORT/DATABASE?schema=SCHEMA"`
    - Adjust the connection URL to point to your own database.
    - Components in the Block letters are to be replaced with your own component
    - Explanation
      - USER: The name of your database user
      - PASSWORD: The password for your database user
      - HOST: The name of your host name (for the local environment, it is localhost)
      - PORT: The port where your database server is running (typically 5432 for PostgreSQL)
      - DATABASE: The name of the database
      - SCHEMA: The name of the schema inside the database
- `schema.prisma` file
  - `generator client {...}` : Generate `Prisma Client` for you
  - `prisma-client-js`: Specifies the client provider, _Javascript(or Typescript)_ client here
- `database db {...}` : Defines data source ( _Your database_ )
  - To create a Postgres database you need two things
    - `pg server`: The application which would be processing each Database queries.
    - `pgAdmin`: A Graphical UI to manage Database
    - Postgres installer install both alongwith `CLI tool` and `Stack builder`
    - `pg` npm pakage is installed, which provides us a Client to interact from the backend
    - ORM like `prisma` is used to simplify the processes.

> !NOTE
> pgAdmin requires user password for its access. If password is lost, then it either could be recovered by altering `pg_hba.conf` file or New password could be set by reinstalling the postgres installer. The Uninstallation should be complete ( _data directory_ ). You would be need to close the active task used by postgres and postgresql services must be stopped from the `services.msc` file.

> [!IMPORTANT]  
> Crucial information necessary for users to succeed.
