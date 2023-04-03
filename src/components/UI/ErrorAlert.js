import React from 'react';

import './ErrorAlert.css';

function ErrorAlert(props) {
  return (
    <section className='error-alert'>
      <h2>Something went wrong! but Application running on Cloudfront using S3</h2>
      <p>{props.errorText}</p>
    </section>
  );
}

export default ErrorAlert;
