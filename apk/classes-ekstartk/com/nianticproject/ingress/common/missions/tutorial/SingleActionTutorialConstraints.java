package com.nianticproject.ingress.common.missions.tutorial;

import com.google.a.a.an;

public class SingleActionTutorialConstraints
  implements TutorialConstraints
{
  private final t permitted;

  public SingleActionTutorialConstraints(t paramt)
  {
    if ((paramt != null) && (paramt != t.c));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.permitted = paramt;
      return;
    }
  }

  public boolean permits(t paramt)
  {
    return paramt == this.permitted;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.SingleActionTutorialConstraints
 * JD-Core Version:    0.6.2
 */