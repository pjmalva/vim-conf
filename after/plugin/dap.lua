local dap = require("dap")

dap.adapters.php = {
    type = "executable",
    command = 'node',
    args = {os.getenv('HOME') .. '/development/dap/vscode-php-debug/out/phpDebug.js'};
}

dap.configurations.php = {
    {
        type = 'php',
        request = 'launch',
        name = 'Listen for Xdebug',
        port = 9000
    }
}

dap.adapters.go = {
  type = 'executable';
  command = 'node';
  args = {os.getenv('HOME') .. '/development/dap/vscode-go/dist/debugAdapter.js'};
}

dap.configurations.go = {
  {
    type = 'go';
    name = 'Debug';
    request = 'launch';
    showLog = false;
    program = "${file}";
    dlvToolPath = vim.fn.exepath('dlv')  -- Adjust to where delve is installed
  },
}
