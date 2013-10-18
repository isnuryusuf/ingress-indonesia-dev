package com.nianticproject.ingress.l;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.nianticproject.ingress.shared.aj;

final class aa
  implements SensorEventListener
{
  aa(z paramz)
  {
  }

  public final void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
    try
    {
      aj.a("SensorEventListener.onAccuracyChanged");
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void onSensorChanged(SensorEvent paramSensorEvent)
  {
    try
    {
      aj.a("SensorEventListener.onSensorChanged");
      z.a(this.a, paramSensorEvent);
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.aa
 * JD-Core Version:    0.6.2
 */