package com.badlogic.gdx;

public enum Input$Peripheral
{
  static
  {
    MultitouchScreen = new Peripheral("MultitouchScreen", 2);
    Accelerometer = new Peripheral("Accelerometer", 3);
    Compass = new Peripheral("Compass", 4);
    Vibrator = new Peripheral("Vibrator", 5);
    Peripheral[] arrayOfPeripheral = new Peripheral[6];
    arrayOfPeripheral[0] = HardwareKeyboard;
    arrayOfPeripheral[1] = OnscreenKeyboard;
    arrayOfPeripheral[2] = MultitouchScreen;
    arrayOfPeripheral[3] = Accelerometer;
    arrayOfPeripheral[4] = Compass;
    arrayOfPeripheral[5] = Vibrator;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.Input.Peripheral
 * JD-Core Version:    0.6.2
 */