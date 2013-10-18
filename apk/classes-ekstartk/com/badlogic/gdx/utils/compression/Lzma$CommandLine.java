package com.badlogic.gdx.utils.compression;

class Lzma$CommandLine
{
  public static final int kBenchmak = 2;
  public static final int kDecode = 1;
  public static final int kEncode;
  public int Algorithm = 2;
  public int Command = -1;
  public int DictionarySize = 8388608;
  public boolean DictionarySizeIsDefined = false;
  public boolean Eos = false;
  public int Fb = 128;
  public boolean FbIsDefined = false;
  public String InFile;
  public int Lc = 3;
  public int Lp = 0;
  public int MatchFinder = 1;
  public int NumBenchmarkPasses = 10;
  public String OutFile;
  public int Pb = 2;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.Lzma.CommandLine
 * JD-Core Version:    0.6.2
 */