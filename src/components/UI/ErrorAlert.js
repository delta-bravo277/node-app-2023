import React from 'react';

import './ErrorAlert.css';

function ErrorAlert(props) {
  return (
    <section className='error-alert'>
      <h2>Application running on CLOUDFRONT using S3 WITH UPDATE-DISTRIBUTION WITH WAITING , SEQ CHANGED and without cache test1</h2>
      <h3>test1</h3>
      <p>{props.errorText}</p>
    </section>
  );
}

export default ErrorAlert;
console.log(process.env.HOST);