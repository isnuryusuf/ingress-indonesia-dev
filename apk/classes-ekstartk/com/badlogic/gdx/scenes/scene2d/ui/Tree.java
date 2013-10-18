package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener.ChangeEvent;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pools;

public class Tree extends WidgetGroup
{
  float iconSpacing = 5.0F;
  float indentSpacing;
  private float prefHeight;
  private float prefWidth;
  Array<Tree.Node> rootNodes = new Array();
  Tree.Node selectedNode;
  Tree.TreeStyle style;
  float ySpacing = 2.0F;

  public Tree(Skin paramSkin)
  {
    this((Tree.TreeStyle)paramSkin.get(Tree.TreeStyle.class));
  }

  public Tree(Skin paramSkin, String paramString)
  {
    this((Tree.TreeStyle)paramSkin.get(paramString, Tree.TreeStyle.class));
  }

  public Tree(Tree.TreeStyle paramTreeStyle)
  {
    setStyle(paramTreeStyle);
    initialize();
  }

  private void draw(SpriteBatch paramSpriteBatch, Array<Tree.Node> paramArray, float paramFloat)
  {
    Drawable localDrawable1 = this.style.plus;
    Drawable localDrawable2 = this.style.minus;
    int i = paramArray.size;
    int j = 0;
    if (j < i)
    {
      Tree.Node localNode = (Tree.Node)paramArray.get(j);
      Actor localActor = localNode.actor;
      float f;
      if ((this.selectedNode == localNode) && (this.style.selection != null))
      {
        if ((localActor instanceof Widget))
        {
          f = ((Widget)localActor).getPrefHeight();
          label89: this.style.selection.draw(paramSpriteBatch, 0.0F, localActor.getY(), getWidth(), f);
        }
      }
      else if ((localNode.children != null) && (localNode.children.size != 0))
        if (!localNode.expanded)
          break label231;
      label231: for (Drawable localDrawable3 = localDrawable2; ; localDrawable3 = localDrawable1)
      {
        localDrawable3.draw(paramSpriteBatch, paramFloat, localActor.getY() + localActor.getHeight() / 2.0F - localDrawable3.getMinHeight() / 2.0F, localDrawable3.getMinWidth(), localDrawable3.getMinHeight());
        if (localNode.expanded)
          draw(paramSpriteBatch, localNode.children, paramFloat + this.indentSpacing);
        j++;
        break;
        f = localActor.getHeight();
        break label89;
      }
    }
  }

  private void initialize()
  {
    addListener(new Tree.1(this));
  }

  private void layout(Array<Tree.Node> paramArray, float paramFloat)
  {
    Drawable localDrawable1 = this.style.plus;
    Drawable localDrawable2 = this.style.minus;
    float f1 = this.ySpacing;
    int i = paramArray.size;
    int j = 0;
    if (j < i)
    {
      Tree.Node localNode = (Tree.Node)paramArray.get(j);
      Actor localActor = localNode.actor;
      Drawable localDrawable3;
      label69: float f2;
      float f4;
      float f3;
      if (localNode.expanded)
      {
        localDrawable3 = localDrawable2;
        f2 = paramFloat + this.iconSpacing;
        if (!(localActor instanceof Widget))
          break label219;
        Widget localWidget = (Widget)localActor;
        float f6 = f2 + localWidget.getPrefWidth();
        float f7 = localWidget.getPrefHeight();
        localWidget.pack();
        f4 = f7;
        f3 = f6;
      }
      while (true)
      {
        this.prefWidth = Math.max(this.prefWidth, f3);
        float f5 = Math.max(f4, localDrawable3.getMinHeight());
        this.prefHeight -= f5;
        localNode.actor.setPosition(paramFloat, this.prefHeight);
        this.prefHeight -= f1;
        if (localNode.expanded)
          layout(localNode.children, paramFloat + this.indentSpacing);
        j++;
        break;
        localDrawable3 = localDrawable1;
        break label69;
        label219: f3 = f2 + localActor.getWidth();
        f4 = localActor.getHeight();
      }
    }
  }

  public void add(Tree.Node paramNode)
  {
    paramNode.parent = null;
    this.rootNodes.add(paramNode);
    paramNode.addToTree(this);
    invalidateHierarchy();
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    Color localColor = getColor();
    paramSpriteBatch.setColor(localColor.r, localColor.g, localColor.b, paramFloat * localColor.a);
    if (this.style.background != null)
      this.style.background.draw(paramSpriteBatch, getX(), getY(), getWidth(), getHeight());
    draw(paramSpriteBatch, this.rootNodes, this.iconSpacing);
    super.draw(paramSpriteBatch, paramFloat);
  }

  public Array<Tree.Node> getNodes()
  {
    return this.rootNodes;
  }

  public float getPrefHeight()
  {
    return this.prefHeight;
  }

  public float getPrefWidth()
  {
    return this.prefWidth;
  }

  public Tree.Node getSelection()
  {
    return this.selectedNode;
  }

  void hit(Array<Tree.Node> paramArray, float paramFloat1, float paramFloat2)
  {
    int i = paramArray.size;
    for (int j = 0; ; j++)
    {
      Tree.Node localNode1;
      if (j < i)
      {
        localNode1 = (Tree.Node)paramArray.get(j);
        if ((paramFloat2 >= localNode1.actor.getY()) && (paramFloat2 <= localNode1.actor.getY() + localNode1.actor.getHeight()))
        {
          if (paramFloat1 < localNode1.actor.getX())
          {
            boolean bool1 = localNode1.expanded;
            boolean bool2 = false;
            if (!bool1)
              bool2 = true;
            localNode1.setExpanded(bool2);
          }
          Tree.Node localNode2 = this.selectedNode;
          this.selectedNode = localNode1;
          ChangeListener.ChangeEvent localChangeEvent = (ChangeListener.ChangeEvent)Pools.obtain(ChangeListener.ChangeEvent.class);
          if (fire(localChangeEvent))
            this.selectedNode = localNode2;
          Pools.free(localChangeEvent);
        }
      }
      else
      {
        return;
      }
      if (localNode1.expanded)
        hit(localNode1.children, paramFloat1, paramFloat2);
    }
  }

  public void layout()
  {
    this.prefWidth = this.style.plus.getMinWidth();
    this.prefWidth = Math.max(this.prefWidth, this.style.minus.getMinWidth());
    this.prefHeight = getHeight();
    layout(this.rootNodes, this.indentSpacing);
    this.prefHeight = (getHeight() - (this.prefHeight + this.ySpacing));
  }

  public void remove(Tree.Node paramNode)
  {
    if (paramNode.parent != null)
    {
      paramNode.parent.remove(paramNode);
      return;
    }
    this.rootNodes.removeValue(paramNode, true);
    paramNode.removeFromTree(this);
    invalidateHierarchy();
  }

  public void setSelection(Tree.Node paramNode)
  {
    this.selectedNode = paramNode;
  }

  public void setStyle(Tree.TreeStyle paramTreeStyle)
  {
    this.style = paramTreeStyle;
    this.indentSpacing = (Math.max(paramTreeStyle.plus.getMinWidth(), paramTreeStyle.minus.getMinWidth()) + 2.0F * this.iconSpacing);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Tree
 * JD-Core Version:    0.6.2
 */