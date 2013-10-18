package com.badlogic.gdx.utils.compression.lzma;

public class Base
{
  public static final int kAlignMask = 15;
  public static final int kAlignTableSize = 16;
  public static final int kDicLogSizeMin = 0;
  public static final int kEndPosModelIndex = 14;
  public static final int kMatchMaxLen = 273;
  public static final int kMatchMinLen = 2;
  public static final int kNumAlignBits = 4;
  public static final int kNumFullDistances = 128;
  public static final int kNumHighLenBits = 8;
  public static final int kNumLenSymbols = 272;
  public static final int kNumLenToPosStates = 4;
  public static final int kNumLenToPosStatesBits = 2;
  public static final int kNumLitContextBitsMax = 8;
  public static final int kNumLitPosStatesBitsEncodingMax = 4;
  public static final int kNumLowLenBits = 3;
  public static final int kNumLowLenSymbols = 8;
  public static final int kNumMidLenBits = 3;
  public static final int kNumMidLenSymbols = 8;
  public static final int kNumPosModels = 10;
  public static final int kNumPosSlotBits = 6;
  public static final int kNumPosStatesBitsEncodingMax = 4;
  public static final int kNumPosStatesBitsMax = 4;
  public static final int kNumPosStatesEncodingMax = 16;
  public static final int kNumPosStatesMax = 16;
  public static final int kNumRepDistances = 4;
  public static final int kNumStates = 12;
  public static final int kStartPosModelIndex = 4;

  public static final int GetLenToPosState(int paramInt)
  {
    int i = paramInt - 2;
    if (i < 4)
      return i;
    return 3;
  }

  public static final int StateInit()
  {
    return 0;
  }

  public static final boolean StateIsCharState(int paramInt)
  {
    return paramInt < 7;
  }

  public static final int StateUpdateChar(int paramInt)
  {
    if (paramInt < 4)
      return 0;
    if (paramInt < 10)
      return paramInt - 3;
    return paramInt - 6;
  }

  public static final int StateUpdateMatch(int paramInt)
  {
    if (paramInt < 7)
      return 7;
    return 10;
  }

  public static final int StateUpdateRep(int paramInt)
  {
    if (paramInt < 7)
      return 8;
    return 11;
  }

  public static final int StateUpdateShortRep(int paramInt)
  {
    if (paramInt < 7)
      return 9;
    return 11;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.lzma.Base
 * JD-Core Version:    0.6.2
 */