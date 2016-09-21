## React Native Flip Clock

Component implementation for [JDFlipNumberView](https://github.com/jaydee3/JDFlipNumberView), it is in
very beginning definately not production ready :-)

For react-native < 0.25.1 use version 0.3.x for recent versions use version 1.0.x

## Installation
1. Install package via npm:
  ```
  npm i -S react-native-flip-clock
  ```
2. Link your library by one of those ways: either by using `rnpm link` (see more about rnpm [here](https://github.com/rnpm/rnpm)) or like it's [described here](http://facebook.github.io/react-native/docs/linking-libraries-ios.html).

3. In Xcode go to targets > build phases and drag over JDFlipNumberView.bundle to copy bundle resources section

## Custom clock number bundle
In design directory you can find .psd file just edit it to your liking and create one .png file for all
digits from 0 - 9, then create .bundle file and drag it over to copy bundle resources. Then set `bundleName`
property on component to bundle name

## FlipClockView
Display Flip clock with current time, doesn't display seconds by default, you have to set showSeconds prop to true
if you want to display them

```
const { FlipClockView } = require('react-native-flip-clock');

<FlipClockView
  bundleName='BundleName'
  showSeconds />
```

## DateCounterView
When mode property set to countdown flip clock counts down from given date, if mode set to countup it counts up form given date to infinity 

```
const { DateCounterView } = require('react-native-flip-clock');

<DateCounterView
  dayDigitCount={1}
  date={Date.now() + (24 * 60 * 60 * 1000)}
  mode='countdown'
  bundleName='BundleName' />
```
![DateCounterView](https://i.giphy.com/l3V0D4WT3rSaIHUB2.gif)
