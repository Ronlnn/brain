module.exports = {
  remove_empty_lines: async () => {
    let content = await app.vault.read(tp.file.path(true));
    content = content.replace(/^\s*$(?:\r\n?|\n)/gm, "");
    await app.vault.modify(tp.file, content);
  }
};
