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

**Command :** `npx prisma init --datasource-provider postgresql`
