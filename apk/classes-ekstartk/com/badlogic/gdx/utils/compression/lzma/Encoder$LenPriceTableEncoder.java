package com.badlogic.gdx.utils.compression.lzma;

class Encoder$LenPriceTableEncoder extends Encoder.LenEncoder
{
  int[] _counters = new int[16];
  int[] _prices = new int[4352];
  int _tableSize;

  Encoder$LenPriceTableEncoder(Encoder paramEncoder)
  {
    super(paramEncoder);
  }

  public void Encode(com.badlogic.gdx.utils.compression.rangecoder.Encoder paramEncoder, int paramInt1, int paramInt2)
  {
    super.Encode(paramEncoder, paramInt1, paramInt2);
    int[] arrayOfInt = this._counters;
    int i = -1 + arrayOfInt[paramInt2];
    arrayOfInt[paramInt2] = i;
    if (i == 0)
      UpdateTable(paramInt2);
  }

  public int GetPrice(int paramInt1, int paramInt2)
  {
    return this._prices[(paramInt1 + paramInt2 * 272)];
  }

  public void SetTableSize(int paramInt)
  {
    this._tableSize = paramInt;
  }

  void UpdateTable(int paramInt)
  {
    SetPrices(paramInt, this._tableSize, this._prices, paramInt * 272);
    this._counters[paramInt] = this._tableSize;
  }

  public void UpdateTables(int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
      UpdateTable(i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.lzma.Encoder.LenPriceTableEncoder
 * JD-Core Version:    0.6.2
 */