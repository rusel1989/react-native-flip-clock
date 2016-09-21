import React, { Component } from 'react'
import { requireNativeComponent } from 'react-native'

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
  showSeconds: React.PropTypes.bool,
  bundleName: React.PropTypes.string
}

const NativeFlipClockView = requireNativeComponent('FlipClockView', FlipClockView)

module.exports = FlipClockView
