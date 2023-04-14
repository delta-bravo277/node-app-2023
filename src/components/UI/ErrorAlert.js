import React from 'react';

import './ErrorAlert.css';

function ErrorAlert(props) {
  return (
    <section className='error-alert'>
      <h2>Application running on Cloudfront using S3 with tagged folder</h2>
      <p>{props.errorText}</p>
    </section>
  );
}

export default ErrorAlert;
