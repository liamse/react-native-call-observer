import { NativeEventEmitter, NativeModules } from 'react-native';
const { CallObserverManager } = NativeModules;

const CallObserverManagerEmitter = new NativeEventEmitter(CallObserverManager);


var callObserver = {
    addEventListener: (callback) => {
        this.subscription = CallObserverManagerEmitter.addListener(
            "callObserver",
            callback
        );
    },
    removeEventListener: () => {
        if (this.subscription) this.subscription.remove();
    },
}

export default callObserver
