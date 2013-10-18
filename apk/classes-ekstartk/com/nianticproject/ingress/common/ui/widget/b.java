package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Stack;

final class b
{
  final Label a;
  final Label b;
  final Label c;
  final ActionButton.ActionButtonStyle d;
  final Actor e;
  final ScrollLabel f;
  final Group g;

  b(String paramString1, String paramString2, String paramString3, ActionButton.ActionButtonStyle paramActionButtonStyle)
  {
    this.d = paramActionButtonStyle;
    this.a = new Label(paramString1, paramActionButtonStyle.mainLabelStyle);
    this.b = new Label(paramString2, paramActionButtonStyle.subLabelStyle);
    this.c = new Label(paramString3, paramActionButtonStyle.errorLabelStyle);
    this.f = new ScrollLabel("", paramActionButtonStyle.mainLabelStyle);
    this.g = new Stack();
    this.g.addActor(this.a);
    this.e = ActionButton.a(this.g, this.b, paramActionButtonStyle);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.b
 * JD-Core Version:    0.6.2
 */