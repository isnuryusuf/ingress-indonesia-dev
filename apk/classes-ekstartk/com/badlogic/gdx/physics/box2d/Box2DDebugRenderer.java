package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL10;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer.ShapeType;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.joints.PulleyJoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Box2DDebugRenderer
{
  private static Vector2 axis = new Vector2();
  private static Vector2 lower;
  private static Vector2 t;
  private static Vector2 upper;
  private static Vector2[] vertices = new Vector2[1000];
  private final Color AABB_COLOR = new Color(1.0F, 0.0F, 1.0F, 1.0F);
  private final Color JOINT_COLOR = new Color(0.5F, 0.8F, 0.8F, 1.0F);
  private final Color SHAPE_AWAKE = new Color(0.9F, 0.7F, 0.7F, 1.0F);
  private final Color SHAPE_KINEMATIC = new Color(0.5F, 0.5F, 0.9F, 1.0F);
  private final Color SHAPE_NOT_ACTIVE = new Color(0.5F, 0.5F, 0.3F, 1.0F);
  private final Color SHAPE_NOT_AWAKE = new Color(0.6F, 0.6F, 0.6F, 1.0F);
  private final Color SHAPE_STATIC = new Color(0.5F, 0.9F, 0.5F, 1.0F);
  private boolean drawAABBs;
  private boolean drawBodies;
  private boolean drawInactiveBodies;
  private boolean drawJoints;
  private final Vector2 f = new Vector2();
  private final Vector2 lv = new Vector2();
  protected ShapeRenderer renderer = new ShapeRenderer();
  private final Vector2 v = new Vector2();

  static
  {
    t = new Vector2();
  }

  public Box2DDebugRenderer()
  {
    this(true, true, false, true);
  }

  public Box2DDebugRenderer(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    lower = new Vector2();
    upper = new Vector2();
    for (int i = 0; i < vertices.length; i++)
      vertices[i] = new Vector2();
    this.drawBodies = paramBoolean1;
    this.drawJoints = paramBoolean2;
    this.drawAABBs = paramBoolean3;
    this.drawInactiveBodies = paramBoolean4;
  }

  private void drawAABB(Fixture paramFixture, Transform paramTransform)
  {
    if (paramFixture.getType() == Shape.Type.Circle)
    {
      localCircleShape = (CircleShape)paramFixture.getShape();
      f1 = localCircleShape.getRadius();
      vertices[0].set(localCircleShape.getPosition());
      vertices[0].rotate(paramTransform.getRotation()).add(paramTransform.getPosition());
      lower.set(vertices[0].x - f1, vertices[0].y - f1);
      upper.set(f1 + vertices[0].x, f1 + vertices[0].y);
      vertices[0].set(lower.x, lower.y);
      vertices[1].set(upper.x, lower.y);
      vertices[2].set(upper.x, upper.y);
      vertices[3].set(lower.x, upper.y);
      drawSolidPolygon(vertices, 4, this.AABB_COLOR);
    }
    while (paramFixture.getType() != Shape.Type.Polygon)
    {
      CircleShape localCircleShape;
      float f1;
      return;
    }
    PolygonShape localPolygonShape = (PolygonShape)paramFixture.getShape();
    int i = localPolygonShape.getVertexCount();
    localPolygonShape.getVertex(0, vertices[0]);
    lower.set(paramTransform.mul(vertices[0]));
    upper.set(lower);
    for (int j = 1; j < i; j++)
    {
      localPolygonShape.getVertex(j, vertices[j]);
      paramTransform.mul(vertices[j]);
      lower.x = Math.min(lower.x, vertices[j].x);
      lower.y = Math.min(lower.y, vertices[j].y);
      upper.x = Math.max(upper.x, vertices[j].x);
      upper.y = Math.max(upper.y, vertices[j].y);
    }
    vertices[0].set(lower.x, lower.y);
    vertices[1].set(upper.x, lower.y);
    vertices[2].set(upper.x, upper.y);
    vertices[3].set(lower.x, upper.y);
    drawSolidPolygon(vertices, 4, this.AABB_COLOR);
  }

  private void drawContact(Contact paramContact)
  {
    WorldManifold localWorldManifold = paramContact.getWorldManifold();
    if (localWorldManifold.getNumberOfContactPoints() == 0)
      return;
    Vector2 localVector2 = localWorldManifold.getPoints()[0];
    this.renderer.point(localVector2.x, localVector2.y, 0.0F);
  }

  private void drawJoint(Joint paramJoint)
  {
    Body localBody1 = paramJoint.getBodyA();
    Body localBody2 = paramJoint.getBodyB();
    Transform localTransform1 = localBody1.getTransform();
    Transform localTransform2 = localBody2.getTransform();
    Vector2 localVector21 = localTransform1.getPosition();
    Vector2 localVector22 = localTransform2.getPosition();
    Vector2 localVector23 = paramJoint.getAnchorA();
    Vector2 localVector24 = paramJoint.getAnchorB();
    if (paramJoint.getType() == JointDef.JointType.DistanceJoint)
    {
      drawSegment(localVector23, localVector24, this.JOINT_COLOR);
      return;
    }
    if (paramJoint.getType() == JointDef.JointType.PulleyJoint)
    {
      PulleyJoint localPulleyJoint = (PulleyJoint)paramJoint;
      Vector2 localVector25 = localPulleyJoint.getGroundAnchorA();
      Vector2 localVector26 = localPulleyJoint.getGroundAnchorB();
      drawSegment(localVector25, localVector23, this.JOINT_COLOR);
      drawSegment(localVector26, localVector24, this.JOINT_COLOR);
      drawSegment(localVector25, localVector26, this.JOINT_COLOR);
      return;
    }
    if (paramJoint.getType() == JointDef.JointType.MouseJoint)
    {
      drawSegment(paramJoint.getAnchorA(), paramJoint.getAnchorB(), this.JOINT_COLOR);
      return;
    }
    drawSegment(localVector21, localVector23, this.JOINT_COLOR);
    drawSegment(localVector23, localVector24, this.JOINT_COLOR);
    drawSegment(localVector22, localVector24, this.JOINT_COLOR);
  }

  private void drawSegment(Vector2 paramVector21, Vector2 paramVector22, Color paramColor)
  {
    this.renderer.setColor(paramColor);
    this.renderer.line(paramVector21.x, paramVector21.y, paramVector22.x, paramVector22.y);
  }

  private void drawShape(Fixture paramFixture, Transform paramTransform, Color paramColor)
  {
    int i = 0;
    if (paramFixture.getType() == Shape.Type.Circle)
    {
      CircleShape localCircleShape = (CircleShape)paramFixture.getShape();
      t.set(localCircleShape.getPosition());
      paramTransform.mul(t);
      drawSolidCircle(t, localCircleShape.getRadius(), axis.set(paramTransform.vals[2], paramTransform.vals[3]), paramColor);
    }
    if (paramFixture.getType() == Shape.Type.Edge)
    {
      EdgeShape localEdgeShape = (EdgeShape)paramFixture.getShape();
      localEdgeShape.getVertex1(vertices[0]);
      localEdgeShape.getVertex2(vertices[1]);
      paramTransform.mul(vertices[0]);
      paramTransform.mul(vertices[1]);
      drawSolidPolygon(vertices, 2, paramColor);
    }
    if (paramFixture.getType() == Shape.Type.Polygon)
    {
      PolygonShape localPolygonShape = (PolygonShape)paramFixture.getShape();
      int k = localPolygonShape.getVertexCount();
      for (int m = 0; m < k; m++)
      {
        localPolygonShape.getVertex(m, vertices[m]);
        paramTransform.mul(vertices[m]);
      }
      drawSolidPolygon(vertices, k, paramColor);
    }
    if (paramFixture.getType() == Shape.Type.Chain)
    {
      ChainShape localChainShape = (ChainShape)paramFixture.getShape();
      int j = localChainShape.getVertexCount();
      while (i < j)
      {
        localChainShape.getVertex(i, vertices[i]);
        paramTransform.mul(vertices[i]);
        i++;
      }
      drawSolidPolygon(vertices, j, paramColor);
    }
  }

  private void drawSolidCircle(Vector2 paramVector21, float paramFloat, Vector2 paramVector22, Color paramColor)
  {
    this.renderer.setColor(paramColor.r, paramColor.g, paramColor.b, paramColor.a);
    int i = 0;
    float f1 = 0.0F;
    if (i < 20)
    {
      this.v.set(paramFloat * (float)Math.cos(f1) + paramVector21.x, paramFloat * (float)Math.sin(f1) + paramVector21.y);
      if (i == 0)
      {
        this.lv.set(this.v);
        this.f.set(this.v);
      }
      while (true)
      {
        i++;
        f1 += 0.3141593F;
        break;
        this.renderer.line(this.lv.x, this.lv.y, this.v.x, this.v.y);
        this.lv.set(this.v);
      }
    }
    this.renderer.line(this.f.x, this.f.y, this.lv.x, this.lv.y);
    this.renderer.line(paramVector21.x, paramVector21.y, 0.0F, paramVector21.x + paramFloat * paramVector22.x, paramVector21.y + paramFloat * paramVector22.y, 0.0F);
  }

  private void drawSolidPolygon(Vector2[] paramArrayOfVector2, int paramInt, Color paramColor)
  {
    this.renderer.setColor(paramColor.r, paramColor.g, paramColor.b, paramColor.a);
    int i = 0;
    if (i < paramInt)
    {
      Vector2 localVector2 = paramArrayOfVector2[i];
      if (i == 0)
      {
        this.lv.set(localVector2);
        this.f.set(localVector2);
      }
      while (true)
      {
        i++;
        break;
        this.renderer.line(this.lv.x, this.lv.y, localVector2.x, localVector2.y);
        this.lv.set(localVector2);
      }
    }
    this.renderer.line(this.f.x, this.f.y, this.lv.x, this.lv.y);
  }

  public static Vector2 getAxis()
  {
    return axis;
  }

  private void renderBodies(World paramWorld)
  {
    this.renderer.begin(ShapeRenderer.ShapeType.Line);
    if ((this.drawBodies) || (this.drawAABBs))
    {
      Iterator localIterator1 = paramWorld.getBodies();
      while (localIterator1.hasNext())
      {
        Body localBody = (Body)localIterator1.next();
        if ((localBody.isActive()) || (this.drawInactiveBodies))
        {
          Transform localTransform = localBody.getTransform();
          int k = localBody.getFixtureList().size();
          ArrayList localArrayList = localBody.getFixtureList();
          int m = 0;
          label91: Fixture localFixture;
          if (m < k)
          {
            localFixture = (Fixture)localArrayList.get(m);
            if (this.drawBodies)
            {
              if (localBody.isActive())
                break label160;
              drawShape(localFixture, localTransform, this.SHAPE_NOT_ACTIVE);
            }
          }
          while (true)
          {
            if (this.drawAABBs)
              drawAABB(localFixture, localTransform);
            m++;
            break label91;
            break;
            label160: if (localBody.getType() == BodyDef.BodyType.StaticBody)
              drawShape(localFixture, localTransform, this.SHAPE_STATIC);
            else if (localBody.getType() == BodyDef.BodyType.KinematicBody)
              drawShape(localFixture, localTransform, this.SHAPE_KINEMATIC);
            else if (!localBody.isAwake())
              drawShape(localFixture, localTransform, this.SHAPE_NOT_AWAKE);
            else
              drawShape(localFixture, localTransform, this.SHAPE_AWAKE);
          }
        }
      }
    }
    if (this.drawJoints)
    {
      Iterator localIterator2 = paramWorld.getJoints();
      while (localIterator2.hasNext())
        drawJoint((Joint)localIterator2.next());
    }
    this.renderer.end();
    if (Gdx.gl10 != null)
      Gdx.gl10.glPointSize(3.0F);
    this.renderer.begin(ShapeRenderer.ShapeType.Point);
    int i = paramWorld.getContactList().size();
    for (int j = 0; j < i; j++)
      drawContact((Contact)paramWorld.getContactList().get(j));
    this.renderer.end();
    if (Gdx.gl10 != null)
      Gdx.gl10.glPointSize(1.0F);
  }

  public static void setAxis(Vector2 paramVector2)
  {
    axis = paramVector2;
  }

  public void dispose()
  {
    this.renderer.dispose();
  }

  public boolean isDrawAABBs()
  {
    return this.drawAABBs;
  }

  public boolean isDrawBodies()
  {
    return this.drawBodies;
  }

  public boolean isDrawInactiveBodies()
  {
    return this.drawInactiveBodies;
  }

  public boolean isDrawJoints()
  {
    return this.drawJoints;
  }

  public void render(World paramWorld, Matrix4 paramMatrix4)
  {
    this.renderer.setProjectionMatrix(paramMatrix4);
    renderBodies(paramWorld);
  }

  public void setDrawAABBs(boolean paramBoolean)
  {
    this.drawAABBs = paramBoolean;
  }

  public void setDrawBodies(boolean paramBoolean)
  {
    this.drawBodies = paramBoolean;
  }

  public void setDrawInactiveBodies(boolean paramBoolean)
  {
    this.drawInactiveBodies = paramBoolean;
  }

  public void setDrawJoints(boolean paramBoolean)
  {
    this.drawJoints = paramBoolean;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.Box2DDebugRenderer
 * JD-Core Version:    0.6.2
 */