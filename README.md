## React Native Flip View

Component implementation for [JDFlipNumberView](https://github.com/jaydee3/JDFlipNumberView), it is in
very beginning definately not production rady :-)

## Installation
1. Install package via npm:
  ```
  npm i -S react-native-flip 
  ```
2. Link your library by one of those ways: either by using `rnpm link` (see more about rnpm [here](https://github.com/rnpm/rnpm)) or like it's [described here](http://facebook.github.io/react-native/docs/linking-libraries-ios.html).

3. In Xcode go to targets > build phases and drag over JDFlipNumberView.bundle to copy bundle resources section

## Custom number bundle
In design directory you can find .psd file just edit it to your liking and create one .png file for all
digits from 0 - 9, then create .bundle file and drag it over to copy bundle resources. Then set `bundleName`
property on component to bundle name

## DateCountdownFlipView
Countdown to given date...
```
const { DateCountdownFlipView } = require('react-native-flip');

<DateCoundownFlipView
  dayDigitCount={1}
  date={Date.now() + (24 * 60 * 60 * 1000)}
  bundleName={'MyBundleName'}/>
```
![DateCountdownFlipView](https://i.giphy.com/26AHQMC29exDY1R0k.gif)
