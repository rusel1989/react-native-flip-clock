import React, { Component, requireNativeComponent } from 'react-native'

class FlipClockView extends Component {
  render () {
    return (
      <NativeFlipClockView
        {...this.props}
        style={[{ flex: 1 }, this.props.style]} />
    )
  }
}

FlipClockView.propTypes = {
  showSeconds: React.propTypes.bool,
  bundleName: React.PropTypes.string
}

const NativeFlipClockView = requireNativeComponent('FlipClockView', FlipClockView)

module.exports = FlipClockView
