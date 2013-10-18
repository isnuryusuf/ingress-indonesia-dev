package com.badlogic.gdx.utils.compression.lzma;

class Encoder$Optimal
{
  public int BackPrev;
  public int BackPrev2;
  public int Backs0;
  public int Backs1;
  public int Backs2;
  public int Backs3;
  public int PosPrev;
  public int PosPrev2;
  public boolean Prev1IsChar;
  public boolean Prev2;
  public int Price;
  public int State;

  Encoder$Optimal(Encoder paramEncoder)
  {
  }

  public boolean IsShortRep()
  {
    return this.BackPrev == 0;
  }

  public void MakeAsChar()
  {
    this.BackPrev = -1;
    this.Prev1IsChar = false;
  }

  public void MakeAsShortRep()
  {
    this.BackPrev = 0;
    this.Prev1IsChar = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.lzma.Encoder.Optimal
 * JD-Core Version:    0.6.2
 */