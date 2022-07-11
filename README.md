# @bankroll/react-native-seon

React Native Bridge for the Seon Device Fingerprint tool

## Installation

```sh
yarn add @bankroll/react-native-seon
```

## Usage

```js
import Seon from "@bankroll/react-native-seon";

// ...

// Setup the Seon SDK <- This is required before doing anything else
await Seon.init();


//Setting Session ID
await Seon.sessionId("ABC123");

//Enable/disable logging
await Seon.logging(true | false);


//Get device fingerprint
const fingerprint = await Seon.fingerprint();

```

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
