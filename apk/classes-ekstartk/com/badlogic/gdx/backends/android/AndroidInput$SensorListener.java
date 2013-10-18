package com.badlogic.gdx.backends.android;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.badlogic.gdx.Input.Orientation;

class AndroidInput$SensorListener
  implements SensorEventListener
{
  final float[] accelerometerValues;
  final float[] magneticFieldValues;
  final Input.Orientation nativeOrientation;

  AndroidInput$SensorListener(AndroidInput paramAndroidInput, Input.Orientation paramOrientation, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    this.accelerometerValues = paramArrayOfFloat1;
    this.magneticFieldValues = paramArrayOfFloat2;
    this.nativeOrientation = paramOrientation;
  }

  public void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
  }

  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    if (paramSensorEvent.sensor.getType() == 1)
    {
      if (this.nativeOrientation != Input.Orientation.Portrait)
        break label69;
      System.arraycopy(paramSensorEvent.values, 0, this.accelerometerValues, 0, this.accelerometerValues.length);
    }
    while (true)
    {
      if (paramSensorEvent.sensor.getType() == 2)
        System.arraycopy(paramSensorEvent.values, 0, this.magneticFieldValues, 0, this.magneticFieldValues.length);
      return;
      label69: this.accelerometerValues[0] = paramSensorEvent.values[1];
      this.accelerometerValues[1] = (-paramSensorEvent.values[0]);
      this.accelerometerValues[2] = paramSensorEvent.values[2];
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidInput.SensorListener
 * JD-Core Version:    0.6.2
 */