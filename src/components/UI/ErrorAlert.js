import React from 'react';

import './ErrorAlert.css';

function ErrorAlert(props) {
  return (
    <section className='error-alert'>
      <h2>Application running on CLOUDFRONT using S3 WITH UPDATE-DISTRIBUTION</h2>
      <p>{props.errorText}</p>
    </section>
  );
}

export default ErrorAlert;
