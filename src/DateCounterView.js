import React, { Component } from 'react'
import { requireNativeComponent } from 'react-native'

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
  mode: React.PropTypes.oneOf(['countup', 'countdown']).isRequired,
  date: React.PropTypes.number.isRequired,
  bundleName: React.PropTypes.string
}

const NativeDateCounterView = requireNativeComponent('DateCounterView', DateCounterView)

module.exports = DateCounterView
