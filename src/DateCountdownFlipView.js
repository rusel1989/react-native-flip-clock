import React, { Component, requireNativeComponent } from 'react-native'

class DateCountdownFlipView extends Component {
  render () {
    return (
      <NativeDateCountdownFlipView
        {...this.props}
        style={[{ flex: 1 }, this.props.style]}
      />
    )
  }
}

DateCountdownFlipView.propTypes = {
  dayDigitCount: React.PropTypes.number.isRequired,
  bundleName: React.PropTypes.string,
  date: React.PropTypes.number.isRequired
}

const NativeDateCountdownFlipView = requireNativeComponent('DateCountdownFlipView', DateCountdownFlipView)

module.exports = DateCountdownFlipView
