package com.badlogic.gdx.physics.box2d;

public class JointEdge
{
  public final Joint joint;
  public final Body other;

  protected JointEdge(Body paramBody, Joint paramJoint)
  {
    this.other = paramBody;
    this.joint = paramJoint;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.JointEdge
 * JD-Core Version:    0.6.2
 */