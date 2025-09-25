# React Native Template# React Native Template# React Native TemplateThis is a new [**React Native**](https://reactnative.dev) project, bootstrapped using [`@react-native-community/cli`](https://github.com/react-native-community/cli).



Um template limpo e completo para React Native com Expo, TypeScript e configuração automática.



## 🚀 Configuração Automática em 3 PassosA clean React Native template with Expo integration, TypeScript, and Styled Components support.



1. **Clone o template:**

```bash

git clone https://github.com/seu-usuario/template-react-native.git MeuApp## ✨ FeaturesA clean React Native template with Expo integration, TypeScript, and Styled Components support.# Getting Started

cd MeuApp

```



2. **Altere o nome do projeto no `package.json`:**- ✅ React Native 0.81.4

```json

{- ✅ Expo SDK 54

  "name": "meu-app-incrivel",

  "version": "1.0.0"- ✅ TypeScript support## Features> **Note**: Make sure you have completed the [Set Up Your Environment](https://reactnative.dev/docs/set-up-your-environment) guide before proceeding.

}

```- ✅ Styled Components



3. **Execute o script de configuração:**- ✅ React Navigation

```bash

chmod +x auto-configure.sh- ✅ Jest testing setup

./auto-configure.sh

```- ✅ ESLint configuration- ✅ React Native 0.81.4## Step 1: Start Metro



**Pronto!** 🎉 Seu projeto está completamente configurado.- ✅ Prettier formatting



## ✨ Features Incluídas- 🚀 **Auto-configuration script** - Just change the name in package.json and run the script!- ✅ Expo SDK 54



- ✅ **React Native 0.81.4** - Versão estável mais recente

- ✅ **Expo SDK 54** - Desenvolvimento simplificado

- ✅ **TypeScript** - Tipagem estática## 🚀 Quick Start (Auto Configuration)- ✅ TypeScript supportFirst, you will need to run **Metro**, the JavaScript build tool for React Native.

- ✅ **Styled Components** - Estilização component-based

- ✅ **React Navigation** - Navegação entre telas

- ✅ **Jest** - Testes unitários configurados

- ✅ **ESLint + Prettier** - Code formatting e linting1. **Clone this template:**- ✅ Styled Components

- 🤖 **Auto-configuração** - Um script que configura tudo automaticamente

```bash

## 🛠️ O que o Script Configura

git clone <your-repo-url> MyNewApp- ✅ React NavigationTo start the Metro dev server, run the following command from the root of your React Native project:

O script `auto-configure.sh` automaticamente:

cd MyNewApp

### Android

- ✅ Atualiza `strings.xml` com o nome do app```- ✅ Jest testing setup

- ✅ Configura `build.gradle` (namespace e applicationId)

- ✅ Atualiza `settings.gradle` com o nome do projeto

- ✅ Reestrutura os packages Java/Kotlin

- ✅ Gera o package ID: `com.yourcompany.nomedoapp`2. **Change the project name in `package.json`:**- ✅ ESLint configuration```sh



### iOS```json

- ✅ Renomeia a pasta do app iOS

- ✅ Renomeia o projeto Xcode (.xcodeproj){- ✅ Prettier formatting# Using npm

- ✅ Atualiza `Info.plist` com o nome do app

- ✅ Configura `AppDelegate.swift`  "name": "my-awesome-app",

- ✅ Atualiza `LaunchScreen.storyboard`

- ✅ Configura o `Podfile`  "version": "1.0.0"npm start



### Expo/General}

- ✅ Atualiza `app.json` (name, slug, package)

- ✅ Converte nomes automaticamente (PascalCase, lowercase, etc.)```## Getting Started



## 📱 Executando o App



Após a configuração automática:3. **Run the auto-configuration script:**# OR using Yarn



```bash

# Instalar dependências

npm install**Windows:**> **Note**: Make sure you have completed the [Set Up Your Environment](https://reactnative.dev/docs/set-up-your-environment) guide before proceeding.yarn start



# iOS: Instalar pods```powershell

cd ios && bundle exec pod install && cd ..

powershell.exe -ExecutionPolicy Bypass -File auto-configure.ps1```

# Iniciar o Metro

npm start```



# Executar no Android### Installation

npm run android

**Linux/Mac:**

# Executar no iOS

npm run ios```bash## Step 2: Build and run your app

```

chmod +x auto-configure.sh

## 📁 Estrutura do Projeto

./auto-configure.sh1. Clone this template:

```

├── src/                    # Código fonte```

│   └── pages/             # Componentes de tela

├── android/               # Código específico Android```bashWith Metro running, open a new terminal window/pane from the root of your React Native project, and use one of the following commands to build and run your Android or iOS app:

├── ios/                   # Código específico iOS

├── __tests__/            # Arquivos de teste4. **Install dependencies:**

├── App.tsx               # Componente raiz

├── index.js              # Ponto de entrada```bashgit clone <your-repo-url> MyNewApp

└── auto-configure.sh     # Script de configuração

```npm install



## 📜 Scripts Disponíveis```cd MyNewApp### Android



```bash

npm start          # Inicia o Metro bundler

npm run android    # Executa no Android5. **For iOS, install pods:**```

npm run ios        # Executa no iOS

npm run lint       # Executa o ESLint```bash

npm test          # Executa os testes

```cd ios && bundle exec pod install && cd ..```sh



## 🔧 Configuração Manual (Opcional)```



Se preferir configurar manualmente, edite os seguintes arquivos:2. Install dependencies:# Using npm



1. **package.json** - Nome do projeto6. **Start developing:**

2. **app.json** - Nome, slug e package do app

3. **android/app/src/main/res/values/strings.xml** - Nome do app Android```bash```bashnpm run android

4. **android/app/build.gradle** - Namespace e applicationId

5. **android/settings.gradle** - Nome do projetonpm start

6. **ios/[AppName]/Info.plist** - Nome do app iOS

7. **ios/Podfile** - Target do projeto```npm install



## 🚨 Troubleshooting



### Limpeza de CacheThat's it! 🎉 Your project is fully configured with your custom name.# OR# OR using Yarn

```bash

# Reset do Metro

npx react-native start --reset-cache

## 🔧 What the auto-configuration script does:yarn installyarn android

# Limpeza Android

cd android && ./gradlew clean && cd ..



# Limpeza iOS- ✅ Updates `app.json` with your app name and package ID``````

rm -rf ios/build

cd ios && bundle exec pod install && cd ..- ✅ Updates Android configuration (strings.xml, build.gradle, settings.gradle)

```

- ✅ Updates Android package structure

### Reinstalação de Dependências

```bash- ✅ Renames iOS folders and project files

rm -rf node_modules package-lock.json

npm install- ✅ Updates iOS configuration files (Info.plist, AppDelegate, etc.)3. Update project configuration:### iOS

cd ios && bundle exec pod install && cd ..

```- ✅ Updates Podfile with correct target name



### Problemas Comuns   - Update `package.json` name field

- **Metro não inicia**: Execute `npx react-native start --reset-cache`

- **Erro no Android**: Execute `cd android && ./gradlew clean`## 📱 Running the App

- **Erro no iOS**: Delete `ios/build` e execute `pod install`

- **Dependências desatualizadas**: Execute `npm install` novamente   - Update `app.json` name, slug, and package configurationFor iOS, remember to install CocoaPods dependencies (this only needs to be run on first clone or after updating native deps).



## 🎯 Exemplos de Uso### Start Metro



### Exemplo 1: App "MeuApp"```bash   - Update bundle identifiers in iOS and Android configurations

```json

// package.jsonnpm start

{ "name": "meuapp" }

``````The first time you create a new project, run the Ruby bundler to install CocoaPods itself:

**Resultado**: App "Meuapp", package `com.yourcompany.meuapp`



### Exemplo 2: App "Super Market"

```json### Android### Running the App

// package.json

{ "name": "super-market" }```bash

```

**Resultado**: App "SuperMarket", package `com.yourcompany.supermarket`npm run android```sh



## 📚 Próximos Passos```



Após configurar o template:#### Start Metrobundle install



1. **Customize o design** - Edite `App.tsx` e componentes em `src/`### iOS

2. **Configure navegação** - Adicione telas em `src/pages/`

3. **Adicione ícones** - Substitua os ícones em `android/` e `ios/````bash```bash```

4. **Configure cores** - Personalize o tema do app

5. **Adicione funcionalidades** - Instale bibliotecas extras conforme necessárionpm run ios



## 🤝 Contribuição```npm start



Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests.



## 📄 Licença## 📁 Project Structure# ORThen, and every time you update your native dependencies, run:



Este template está disponível sob a licença MIT.



---```yarn start



**Dica**: Mantenha o arquivo `auto-configure.sh` no seu template para facilitar a criação de novos projetos no futuro! 🚀├── src/                 # Source code

│   └── pages/          # Screen components``````sh

├── android/            # Android specific code

├── ios/               # iOS specific codebundle exec pod install

├── __tests__/         # Test files

├── App.tsx            # Root component#### Android```

└── index.js           # Entry point

``````bash



## 📜 Available Scriptsnpm run androidFor more information, please visit [CocoaPods Getting Started guide](https://guides.cocoapods.org/using/getting-started.html).



- `npm start` - Start Metro bundler# OR

- `npm run android` - Run on Android

- `npm run ios` - Run on iOSyarn android```sh

- `npm run lint` - Run ESLint

- `npm test` - Run tests```# Using npm



## 🛠️ Manual Configuration (if needed)npm run ios



If you prefer manual setup, check the [TEMPLATE_SETUP.md](./TEMPLATE_SETUP.md) file for detailed instructions.#### iOS



## 📚 Learn More# OR using Yarn



- [React Native Documentation](https://reactnative.dev)For iOS, install CocoaPods dependencies first:yarn ios

- [Expo Documentation](https://docs.expo.dev)

- [React Navigation](https://reactnavigation.org)```

- [Styled Components](https://styled-components.com)

```bash

## 🤝 Contributing

# Install Ruby bundler (first time only)If everything is set up correctly, you should see your new app running in the Android Emulator, iOS Simulator, or your connected device.

Contributions are welcome! Feel free to open issues and pull requests.

bundle install

## 📄 License

This is one way to run your app — you can also build it directly from Android Studio or Xcode.

This template is available under the MIT License.
# Install CocoaPods dependencies

bundle exec pod install## Step 3: Modify your app

```

Now that you have successfully run the app, let's make changes!

Then run the app:

```bashOpen `App.tsx` in your text editor of choice and make some changes. When you save, your app will automatically update and reflect these changes — this is powered by [Fast Refresh](https://reactnative.dev/docs/fast-refresh).

npm run ios

# ORWhen you want to forcefully reload, for example to reset the state of your app, you can perform a full reload:

yarn ios

```- **Android**: Press the <kbd>R</kbd> key twice or select **"Reload"** from the **Dev Menu**, accessed via <kbd>Ctrl</kbd> + <kbd>M</kbd> (Windows/Linux) or <kbd>Cmd ⌘</kbd> + <kbd>M</kbd> (macOS).

- **iOS**: Press <kbd>R</kbd> in iOS Simulator.

## Project Structure

## Congratulations! :tada:

```

├── src/                 # Source codeYou've successfully run and modified your React Native App. :partying_face:

│   └── pages/          # Screen components

├── android/            # Android specific code### Now what?

├── ios/               # iOS specific code

├── __tests__/         # Test files- If you want to add this new React Native code to an existing application, check out the [Integration guide](https://reactnative.dev/docs/integration-with-existing-apps).

├── App.tsx            # Root component- If you're curious to learn more about React Native, check out the [docs](https://reactnative.dev/docs/getting-started).

└── index.js           # Entry point

```# Troubleshooting



## ScriptsIf you're having issues getting the above steps to work, see the [Troubleshooting](https://reactnative.dev/docs/troubleshooting) page.



- `npm start` - Start Metro bundler# Learn More

- `npm run android` - Run on Android

- `npm run ios` - Run on iOSTo learn more about React Native, take a look at the following resources:

- `npm run lint` - Run ESLint

- `npm test` - Run tests- [React Native Website](https://reactnative.dev) - learn more about React Native.

- [Getting Started](https://reactnative.dev/docs/environment-setup) - an **overview** of React Native and how setup your environment.

## Customization- [Learn the Basics](https://reactnative.dev/docs/getting-started) - a **guided tour** of the React Native **basics**.

- [Blog](https://reactnative.dev/blog) - read the latest official React Native **Blog** posts.

After cloning this template:- [`@facebook/react-native`](https://github.com/facebook/react-native) - the Open Source; GitHub **repository** for React Native.

#   t e m p l a t e - r e a c N a t i v e - a n d - I o s 

1. **Update App Name**: Change the app name in `app.json` and `package.json` 

2. **Update Bundle ID**: Update package name in `app.json` and Android `build.gradle` 
3. **Update iOS Bundle ID**: Update bundle identifier in iOS project settings
4. **Remove Template References**: Search for any remaining template-specific references

## Learn More

- [React Native Documentation](https://reactnative.dev)
- [Expo Documentation](https://docs.expo.dev)
- [React Navigation](https://reactnavigation.org)
- [Styled Components](https://styled-components.com)#   t e m p l a t e - r e a c N a t i v e - a n d - I o s 
 
 
