augroup vimlsp_settings_vls
  au!
  LspRegisterServer {
      \ 'name': 'vls',
      \ 'cmd': {server_info->lsp_settings#get('vls', 'cmd', [lsp_settings#exec_path('vls'), '--stdio'])},
      \ 'root_uri':{server_info->lsp_settings#get('vls', 'root_uri', lsp_settings#root_uri(['.git/', 'package.json']))},
      \ 'initialization_options': lsp_settings#get('vls', 'initialization_options', {'config': {'vetur': {'useWorkspaceDependencies': v:false, 'validation': {'template': v:true, 'style': v:true, 'script': v:true}, 'completion': {'autoImport': v:false, 'useScaffoldSnippets': v:false, 'tagCasing': 'kebab'}, 'format': {'defaultFormatter': {'js': v:none, 'ts': v:none}, 'defaultFormatterOptions': {}, 'scriptInitialIndent': v:false, 'styleInitialIndent': v:false}, 'dev': {'logLevel': 'DEBUG'}}, 'css': {}, 'html': {'suggest': {}}, 'javascript': {'format': {}}, 'typescript': {'format': {}}, 'emmet': {}, 'stylusSupremacy': {}}}),
      \ 'whitelist': lsp_settings#get('vls', 'whitelist', ['vue']),
      \ 'blacklist': lsp_settings#get('vls', 'blacklist', []),
      \ 'config': lsp_settings#get('vls', 'config', {}),
      \ 'workspace_config': lsp_settings#get('vls', 'workspace_config', {}),
      \ }
augroup END
