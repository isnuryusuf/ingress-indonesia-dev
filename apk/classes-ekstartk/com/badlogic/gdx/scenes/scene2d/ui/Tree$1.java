package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;

class Tree$1 extends ClickListener
{
  Tree$1(Tree paramTree)
  {
  }

  public void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    this.this$0.hit(this.this$0.rootNodes, paramFloat1, paramFloat2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Tree.1
 * JD-Core Version:    0.6.2
 */