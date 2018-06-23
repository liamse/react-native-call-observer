# react-native-call-observer &middot; [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](README.md#Contributing)

Native call observer for iOS.

---

## Usage (iOS)

```bash
npm install --save react-native-call-observer
```

### Adding automatically with react-native link

At the command line, in your project folder, type:

```bash
react-native link react-native-call-observer
```

---

## Example

```js
import callObserver from 'react-native-call-observer';

componentDidMount(){
    callObserver.addEventListener((callStatus)=>{
      console.log(callStatus) // e.g. {callStatus: 'ended'}
    })
}
```

---

## Contributing

Any contribution is weolcomed.

---

## Licence

react-native-call-observer is [MIT licensed.](https://github.com/liamse/react-native-call-observer/blob/master/LICENSE)
