const fs = require("fs");
const path = require("path");
const crypto = require("crypto");

function generateRandomHash() {
  // 生成一个4字节的随机数，转换为8位16进制数
  return crypto.randomBytes(4).toString("hex");
}

function addHashToFilename(filePath) {
  const hash = generateRandomHash();
  const parsedPath = path.parse(filePath);
  const newPath = `${parsedPath.dir}/${parsedPath.name}.${hash}${parsedPath.ext}`;
  fs.renameSync(filePath, newPath);
  return newPath;
}

function updateFileReferences(filesToUpdate, newPaths) {
  filesToUpdate.forEach((fileToUpdate) => {
    if (fs.existsSync(fileToUpdate)) {
      let content = fs.readFileSync(fileToUpdate, "utf8");
      newPaths.forEach((path) => {
        const regex = new RegExp(path.original.replace(".", "\\."), "g");
        content = content.replace(regex, path.new);
      });
      fs.writeFileSync(fileToUpdate, content);
    }
  });
}

const filesToHash = ["main.dart.js", "flutter.js"];
const newPaths = filesToHash.map((file) => {
  const originalFilePath = `build/web/${file}`;
  if (fs.existsSync(originalFilePath)) {
    const newFilePath = addHashToFilename(originalFilePath);
    return { original: file, new: path.basename(newFilePath) };
  } else {
    return { original: file, new: file };
  }
});

updateFileReferences(["build/web/index.html"], newPaths);

const filesToUpdate = ["build/web/flutter_service_worker.js"];
newPaths.forEach((pathInfo) => {
  if (pathInfo.original !== pathInfo.new) {
    filesToUpdate.push(`build/web/${pathInfo.new}`);
  }
});

updateFileReferences(filesToUpdate, newPaths);