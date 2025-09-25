const { getDefaultConfig } = require('@expo/metro-config');
const path = require('path');

// Obtém a configuração padrão do Expo
const config = getDefaultConfig(__dirname);

// Adiciona a pasta node_modules aos "watchFolders".
// Isto garante que o Metro monitoriza alterações dentro dos pacotes.
config.watchFolders = [
  ...config.watchFolders,
  path.resolve(__dirname, 'node_modules'),
];

// Adiciona a pasta node_modules aos caminhos de resolução do resolver.
// Isto ajuda o Metro a encontrar módulos e assets dentro dos pacotes.
config.resolver.nodeModulesPaths = [
  ...config.resolver.nodeModulesPaths,
  path.resolve(__dirname, 'node_modules'),
];

// Exporta a configuração modificada
module.exports = config;
