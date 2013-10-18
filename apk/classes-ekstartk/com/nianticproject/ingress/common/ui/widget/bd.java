package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Stack;

public final class bd
{
  public static Stack a(Actor[] paramArrayOfActor)
  {
    Stack localStack = new Stack();
    int i = paramArrayOfActor.length;
    for (int j = 0; j < i; j++)
      localStack.addActor(paramArrayOfActor[j]);
    return localStack;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.bd
 * JD-Core Version:    0.6.2
 */