Variables  
=================


The variables average measure taken from the accelerometer and gyroscope 3-axial raw signals "Time-body-Average-acc-Mean-xyz" and "Time-body-Average-gyro-Mean-xyz". The time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals ("Time-body-Average-acc-Mean-xyz" and "Time-body-Average-gyro-Mean-xyz") using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (Time-body-Average-accjerk-Mean-xyz and Time-body-Average-gyrojerk-Mean-xyz. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (Time-body-Average-accmag-Mean, Time-gravity-Average-accmag-Mean, Time-body-Average-accjerkmag-Mean, Time-body-Average-gyromag-Mean, Time-body-Average-gyrojerkmag-Mean). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing Fourier-body-Average-acc-Mean-xyz, Fourier-body-Average-accjerk-Mean-xyz. Fourier-body-Average-gyro-Mean-xyz, Fourier-body-Average-accmag-Mean, Fourier-body-Average-bodyaccjerkmag-Mean, Fourier-body-Average-bodygyromag-Mean, Fourier-body-Average-bodygyrojerkmag-Mean. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-xyz' is used to denote 3-axial signals in the X, Y and Z directions.

id
outcome
Time-body-Average-acc-Mean-xyz
Time-Average-gravityacc-Mean-xyz
Time-body-Average-accjerk-Mean-xyz
Time-body-Average-gyro-Mean-xyz
Time-body-Average-gyrojerk-Mean-xyz
Time-body-Average-accmag-Mean
Time-Average-gravityaccmag-Mean
Time-body-Average-accjerkmag-Mean
Time-body-Average-gyromag-Mean
Time-body-Average-gyrojerkmag-Mean
Fourier-body-Average-acc-Mean-xyz
Fourier-body-Average-accjerk-Mean-xyz
Fourier-body-Average-gyro-Mean-xyz
Fourier-body-Average-accmag-Mean
Fourier-body-Average-bodyaccjerkmag-Mean
Fourier-body-Average-bodygyromag-Mean
Fourier-body-Average-bodygyrojerkmag-Mean


The set of variables that were estimated from these signals are: 

Mean: Mean value
SD: Standard deviation


Additional to the measures variable, there are the:

id: the subject 
activity : the activity labels are divided in
  1 WALKING
  2 WALKING_UPSTAIRS
  3 WALKING_DOWNSTAIRS
  4 SITTING
  5 STANDING
  6 LAYING