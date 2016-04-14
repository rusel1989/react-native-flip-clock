import React, { Component, requireNativeComponent } from 'react-native'

class DateCounterView extends Component {
  render () {
    return (
      <NativeDateCounterView
        {...this.props}
        style={[{ flex: 1 }, this.props.style]} />
    )
  }
}

DateCounterView.propTypes = {
  dayDigitCount: React.PropTypes.number.isRequired,
  mode: React.PropTypes.string.isRequired,
  date: React.PropTypes.oneOf('countup', 'countdown').isRequired,
  bundleName: React.PropTypes.string
}

const NativeDateCounterView = requireNativeComponent('DateCounterView', DateCounterView)

module.exports = DateCounterView
