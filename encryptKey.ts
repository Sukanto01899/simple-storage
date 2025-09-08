// const ethers = require("ethers");
// require("dotenv").config();
// const fs = require("fs-extra")

import { ethers } from "ethers";
import * as fs from "fs-extra";
import "dotenv/config";

async function main() {
    const wallet = new ethers.Wallet(process.env.PRIVATE_KEY!);

    const encryptedKey = await wallet.encrypt(process.env.PASSWORD!);

    fs.writeFileSync("./.encryptedKey.json", encryptedKey);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
