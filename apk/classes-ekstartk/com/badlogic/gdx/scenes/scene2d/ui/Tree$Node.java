package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.utils.Array;

public class Tree$Node
{
  final Actor actor;
  Array<Node> children;
  boolean expanded;
  Node parent;

  public Tree$Node(Actor paramActor)
  {
    this.actor = paramActor;
  }

  public void add(Node paramNode)
  {
    paramNode.parent = this;
    if (this.children == null)
      this.children = new Array(2);
    this.children.add(paramNode);
    if (!this.expanded);
    while (true)
    {
      return;
      Group localGroup = this.actor.getParent();
      if ((localGroup instanceof Tree))
      {
        Tree localTree = (Tree)localGroup;
        int i = this.children.size;
        for (int j = 0; j < i; j++)
          ((Node)this.children.get(j)).addToTree(localTree);
      }
    }
  }

  void addToTree(Tree paramTree)
  {
    paramTree.addActor(this.actor);
    if (!this.expanded);
    while (true)
    {
      return;
      int i = this.children.size;
      for (int j = 0; j < i; j++)
        ((Node)this.children.get(j)).addToTree(paramTree);
    }
  }

  public Actor getActor()
  {
    return this.actor;
  }

  public Array<Node> getChildren()
  {
    return this.children;
  }

  public Node getParent()
  {
    return this.parent;
  }

  public boolean isExpanded()
  {
    return this.expanded;
  }

  public void remove(Node paramNode)
  {
    if (this.children == null);
    do
    {
      Group localGroup;
      do
      {
        do
        {
          return;
          this.children.removeValue(paramNode, true);
        }
        while (!this.expanded);
        localGroup = this.actor.getParent();
      }
      while (!(localGroup instanceof Tree));
      paramNode.removeFromTree((Tree)localGroup);
    }
    while (this.children.size != 0);
    this.expanded = false;
  }

  void removeFromTree(Tree paramTree)
  {
    paramTree.removeActor(this.actor);
    if (!this.expanded);
    while (true)
    {
      return;
      int i = this.children.size;
      for (int j = 0; j < i; j++)
        ((Node)this.children.get(j)).removeFromTree(paramTree);
    }
  }

  void setExpanded(boolean paramBoolean)
  {
    if ((paramBoolean == this.expanded) || (this.children == null) || (this.children.size == 0));
    Group localGroup;
    do
    {
      return;
      this.expanded = paramBoolean;
      localGroup = this.actor.getParent();
    }
    while (!(localGroup instanceof Tree));
    Tree localTree = (Tree)localGroup;
    if (paramBoolean)
    {
      int k = this.children.size;
      for (int m = 0; m < k; m++)
        ((Node)this.children.get(m)).addToTree(localTree);
    }
    int i = this.children.size;
    for (int j = 0; j < i; j++)
      ((Node)this.children.get(j)).removeFromTree(localTree);
    localTree.invalidateHierarchy();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Tree.Node
 * JD-Core Version:    0.6.2
 */