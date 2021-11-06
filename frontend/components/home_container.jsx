import React from 'react';
import { connect } from 'react-redux';
import Home from './home';
import { login } from '../actions/session_actions';

const mSTP = state => {
    return {
        current_user: state.session.current_user,
    };
};

const mDTP = dispatch => ({
    login: formUser => dispatch(login(formUser)),
});

export default connect(mSTP, mDTP)(Home);