import { connect } from 'react-redux';

import ProfReviewIndex from './prof_review_index';
import {
    requestProfReviews,
    deleteProfReview
} from '../../actions/prof_review_actions';

const mSTP = state => ({
    profReviews: Object.values(state.profReviews),
});

const mDTP = dispatch => ({
    requestProfReviews: () => dispatch(requestProfReviews()),
    deleteProfReview: profReviewId => dispatch(deleteProfReview(profReviewId)),
});

export default connect(mSTP, mDTP)(ProfReviewIndex);