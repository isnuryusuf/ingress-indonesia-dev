package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.joints.DistanceJoint;
import com.badlogic.gdx.physics.box2d.joints.DistanceJointDef;
import com.badlogic.gdx.physics.box2d.joints.FrictionJoint;
import com.badlogic.gdx.physics.box2d.joints.FrictionJointDef;
import com.badlogic.gdx.physics.box2d.joints.GearJoint;
import com.badlogic.gdx.physics.box2d.joints.GearJointDef;
import com.badlogic.gdx.physics.box2d.joints.MouseJoint;
import com.badlogic.gdx.physics.box2d.joints.MouseJointDef;
import com.badlogic.gdx.physics.box2d.joints.PrismaticJoint;
import com.badlogic.gdx.physics.box2d.joints.PrismaticJointDef;
import com.badlogic.gdx.physics.box2d.joints.PulleyJoint;
import com.badlogic.gdx.physics.box2d.joints.PulleyJointDef;
import com.badlogic.gdx.physics.box2d.joints.RevoluteJoint;
import com.badlogic.gdx.physics.box2d.joints.RevoluteJointDef;
import com.badlogic.gdx.physics.box2d.joints.RopeJoint;
import com.badlogic.gdx.physics.box2d.joints.RopeJointDef;
import com.badlogic.gdx.physics.box2d.joints.WeldJoint;
import com.badlogic.gdx.physics.box2d.joints.WeldJointDef;
import com.badlogic.gdx.physics.box2d.joints.WheelJoint;
import com.badlogic.gdx.physics.box2d.joints.WheelJointDef;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.LongMap;
import com.badlogic.gdx.utils.Pool;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class World
  implements Disposable
{
  private final long addr;
  protected final LongMap<Body> bodies = new LongMap(100);
  private final Contact contact = new Contact(this, 0L);
  private long[] contactAddrs = new long['È'];
  protected ContactFilter contactFilter = null;
  protected ContactListener contactListener = null;
  private final ArrayList<Contact> contacts = new ArrayList();
  protected final LongMap<Fixture> fixtures = new LongMap(100);
  protected final Pool<Body> freeBodies = new World.1(this, 100, 200);
  private final ArrayList<Contact> freeContacts = new ArrayList();
  protected final Pool<Fixture> freeFixtures = new World.2(this, 100, 200);
  final Vector2 gravity = new Vector2();
  private final ContactImpulse impulse = new ContactImpulse(this, 0L);
  protected final LongMap<Joint> joints = new LongMap(100);
  private final Manifold manifold = new Manifold(0L);
  private QueryCallback queryCallback = null;
  private RayCastCallback rayCastCallback = null;
  private Vector2 rayNormal = new Vector2();
  private Vector2 rayPoint = new Vector2();
  final float[] tmpGravity = new float[2];

  public World(Vector2 paramVector2, boolean paramBoolean)
  {
    this.addr = newWorld(paramVector2.x, paramVector2.y, paramBoolean);
    this.contacts.ensureCapacity(this.contactAddrs.length);
    this.freeContacts.ensureCapacity(this.contactAddrs.length);
    for (int i = 0; i < this.contactAddrs.length; i++)
      this.freeContacts.add(new Contact(this, 0L));
  }

  private void beginContact(long paramLong)
  {
    this.contact.addr = paramLong;
    if (this.contactListener != null)
      this.contactListener.beginContact(this.contact);
  }

  private boolean contactFilter(long paramLong1, long paramLong2)
  {
    if (this.contactFilter != null)
      return this.contactFilter.shouldCollide((Fixture)this.fixtures.get(paramLong1), (Fixture)this.fixtures.get(paramLong2));
    Filter localFilter1 = ((Fixture)this.fixtures.get(paramLong1)).getFilterData();
    Filter localFilter2 = ((Fixture)this.fixtures.get(paramLong2)).getFilterData();
    if ((localFilter1.groupIndex == localFilter2.groupIndex) && (localFilter1.groupIndex != 0))
      return localFilter1.groupIndex > 0;
    return ((localFilter1.maskBits & localFilter2.categoryBits) != 0) && ((localFilter1.categoryBits & localFilter2.maskBits) != 0);
  }

  private long createProperJoint(JointDef paramJointDef)
  {
    if (paramJointDef.type == JointDef.JointType.DistanceJoint)
    {
      DistanceJointDef localDistanceJointDef = (DistanceJointDef)paramJointDef;
      return jniCreateDistanceJoint(this.addr, localDistanceJointDef.bodyA.addr, localDistanceJointDef.bodyB.addr, localDistanceJointDef.collideConnected, localDistanceJointDef.localAnchorA.x, localDistanceJointDef.localAnchorA.y, localDistanceJointDef.localAnchorB.x, localDistanceJointDef.localAnchorB.y, localDistanceJointDef.length, localDistanceJointDef.frequencyHz, localDistanceJointDef.dampingRatio);
    }
    if (paramJointDef.type == JointDef.JointType.FrictionJoint)
    {
      FrictionJointDef localFrictionJointDef = (FrictionJointDef)paramJointDef;
      return jniCreateFrictionJoint(this.addr, localFrictionJointDef.bodyA.addr, localFrictionJointDef.bodyB.addr, localFrictionJointDef.collideConnected, localFrictionJointDef.localAnchorA.x, localFrictionJointDef.localAnchorA.y, localFrictionJointDef.localAnchorB.x, localFrictionJointDef.localAnchorB.y, localFrictionJointDef.maxForce, localFrictionJointDef.maxTorque);
    }
    if (paramJointDef.type == JointDef.JointType.GearJoint)
    {
      GearJointDef localGearJointDef = (GearJointDef)paramJointDef;
      return jniCreateGearJoint(this.addr, localGearJointDef.bodyA.addr, localGearJointDef.bodyB.addr, localGearJointDef.collideConnected, localGearJointDef.joint1.addr, localGearJointDef.joint2.addr, localGearJointDef.ratio);
    }
    if (paramJointDef.type == JointDef.JointType.MouseJoint)
    {
      MouseJointDef localMouseJointDef = (MouseJointDef)paramJointDef;
      return jniCreateMouseJoint(this.addr, localMouseJointDef.bodyA.addr, localMouseJointDef.bodyB.addr, localMouseJointDef.collideConnected, localMouseJointDef.target.x, localMouseJointDef.target.y, localMouseJointDef.maxForce, localMouseJointDef.frequencyHz, localMouseJointDef.dampingRatio);
    }
    if (paramJointDef.type == JointDef.JointType.PrismaticJoint)
    {
      PrismaticJointDef localPrismaticJointDef = (PrismaticJointDef)paramJointDef;
      return jniCreatePrismaticJoint(this.addr, localPrismaticJointDef.bodyA.addr, localPrismaticJointDef.bodyB.addr, localPrismaticJointDef.collideConnected, localPrismaticJointDef.localAnchorA.x, localPrismaticJointDef.localAnchorA.y, localPrismaticJointDef.localAnchorB.x, localPrismaticJointDef.localAnchorB.y, localPrismaticJointDef.localAxisA.x, localPrismaticJointDef.localAxisA.y, localPrismaticJointDef.referenceAngle, localPrismaticJointDef.enableLimit, localPrismaticJointDef.lowerTranslation, localPrismaticJointDef.upperTranslation, localPrismaticJointDef.enableMotor, localPrismaticJointDef.maxMotorForce, localPrismaticJointDef.motorSpeed);
    }
    if (paramJointDef.type == JointDef.JointType.PulleyJoint)
    {
      PulleyJointDef localPulleyJointDef = (PulleyJointDef)paramJointDef;
      return jniCreatePulleyJoint(this.addr, localPulleyJointDef.bodyA.addr, localPulleyJointDef.bodyB.addr, localPulleyJointDef.collideConnected, localPulleyJointDef.groundAnchorA.x, localPulleyJointDef.groundAnchorA.y, localPulleyJointDef.groundAnchorB.x, localPulleyJointDef.groundAnchorB.y, localPulleyJointDef.localAnchorA.x, localPulleyJointDef.localAnchorA.y, localPulleyJointDef.localAnchorB.x, localPulleyJointDef.localAnchorB.y, localPulleyJointDef.lengthA, localPulleyJointDef.lengthB, localPulleyJointDef.ratio);
    }
    if (paramJointDef.type == JointDef.JointType.RevoluteJoint)
    {
      RevoluteJointDef localRevoluteJointDef = (RevoluteJointDef)paramJointDef;
      return jniCreateRevoluteJoint(this.addr, localRevoluteJointDef.bodyA.addr, localRevoluteJointDef.bodyB.addr, localRevoluteJointDef.collideConnected, localRevoluteJointDef.localAnchorA.x, localRevoluteJointDef.localAnchorA.y, localRevoluteJointDef.localAnchorB.x, localRevoluteJointDef.localAnchorB.y, localRevoluteJointDef.referenceAngle, localRevoluteJointDef.enableLimit, localRevoluteJointDef.lowerAngle, localRevoluteJointDef.upperAngle, localRevoluteJointDef.enableMotor, localRevoluteJointDef.motorSpeed, localRevoluteJointDef.maxMotorTorque);
    }
    if (paramJointDef.type == JointDef.JointType.WeldJoint)
    {
      WeldJointDef localWeldJointDef = (WeldJointDef)paramJointDef;
      return jniCreateWeldJoint(this.addr, localWeldJointDef.bodyA.addr, localWeldJointDef.bodyB.addr, localWeldJointDef.collideConnected, localWeldJointDef.localAnchorA.x, localWeldJointDef.localAnchorA.y, localWeldJointDef.localAnchorB.x, localWeldJointDef.localAnchorB.y, localWeldJointDef.referenceAngle);
    }
    if (paramJointDef.type == JointDef.JointType.RopeJoint)
    {
      RopeJointDef localRopeJointDef = (RopeJointDef)paramJointDef;
      return jniCreateRopeJoint(this.addr, localRopeJointDef.bodyA.addr, localRopeJointDef.bodyB.addr, localRopeJointDef.collideConnected, localRopeJointDef.localAnchorA.x, localRopeJointDef.localAnchorA.y, localRopeJointDef.localAnchorB.x, localRopeJointDef.localAnchorB.y, localRopeJointDef.maxLength);
    }
    if (paramJointDef.type == JointDef.JointType.WheelJoint)
    {
      WheelJointDef localWheelJointDef = (WheelJointDef)paramJointDef;
      return jniCreateWheelJoint(this.addr, localWheelJointDef.bodyA.addr, localWheelJointDef.bodyB.addr, localWheelJointDef.collideConnected, localWheelJointDef.localAnchorA.x, localWheelJointDef.localAnchorA.y, localWheelJointDef.localAnchorB.x, localWheelJointDef.localAnchorB.y, localWheelJointDef.localAxisA.x, localWheelJointDef.localAxisA.y, localWheelJointDef.enableMotor, localWheelJointDef.maxMotorTorque, localWheelJointDef.motorSpeed, localWheelJointDef.frequencyHz, localWheelJointDef.dampingRatio);
    }
    return 0L;
  }

  private void endContact(long paramLong)
  {
    this.contact.addr = paramLong;
    if (this.contactListener != null)
      this.contactListener.endContact(this.contact);
  }

  public static native float getVelocityThreshold();

  private native void jniClearForces(long paramLong);

  private native long jniCreateBody(long paramLong, int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, float paramFloat9);

  private native long jniCreateDistanceJoint(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7);

  private native long jniCreateFrictionJoint(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6);

  private native long jniCreateGearJoint(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean, long paramLong4, long paramLong5, float paramFloat);

  private native long jniCreateMouseJoint(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5);

  private native long jniCreatePrismaticJoint(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, boolean paramBoolean2, float paramFloat8, float paramFloat9, boolean paramBoolean3, float paramFloat10, float paramFloat11);

  private native long jniCreatePulleyJoint(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, float paramFloat10, float paramFloat11);

  private native long jniCreateRevoluteJoint(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, boolean paramBoolean2, float paramFloat6, float paramFloat7, boolean paramBoolean3, float paramFloat8, float paramFloat9);

  private native long jniCreateRopeJoint(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5);

  private native long jniCreateWeldJoint(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5);

  private native long jniCreateWheelJoint(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, boolean paramBoolean2, float paramFloat7, float paramFloat8, float paramFloat9, float paramFloat10);

  private native void jniDestroyBody(long paramLong1, long paramLong2);

  private native void jniDestroyJoint(long paramLong1, long paramLong2);

  private native void jniDispose(long paramLong);

  private native boolean jniGetAutoClearForces(long paramLong);

  private native int jniGetBodyCount(long paramLong);

  private native int jniGetContactCount(long paramLong);

  private native void jniGetContactList(long paramLong, long[] paramArrayOfLong);

  private native void jniGetGravity(long paramLong, float[] paramArrayOfFloat);

  private native int jniGetJointcount(long paramLong);

  private native int jniGetProxyCount(long paramLong);

  private native boolean jniIsLocked(long paramLong);

  private native void jniQueryAABB(long paramLong, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);

  private native void jniRayCast(long paramLong, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);

  private native void jniSetAutoClearForces(long paramLong, boolean paramBoolean);

  private native void jniSetContiousPhysics(long paramLong, boolean paramBoolean);

  private native void jniSetGravity(long paramLong, float paramFloat1, float paramFloat2);

  private native void jniSetWarmStarting(long paramLong, boolean paramBoolean);

  private native void jniStep(long paramLong, float paramFloat, int paramInt1, int paramInt2);

  private native long newWorld(float paramFloat1, float paramFloat2, boolean paramBoolean);

  private void postSolve(long paramLong1, long paramLong2)
  {
    this.contact.addr = paramLong1;
    this.impulse.addr = paramLong2;
    if (this.contactListener != null)
      this.contactListener.postSolve(this.contact, this.impulse);
  }

  private void preSolve(long paramLong1, long paramLong2)
  {
    this.contact.addr = paramLong1;
    this.manifold.addr = paramLong2;
    if (this.contactListener != null)
      this.contactListener.preSolve(this.contact, this.manifold);
  }

  private boolean reportFixture(long paramLong)
  {
    if (this.queryCallback != null)
      return this.queryCallback.reportFixture((Fixture)this.fixtures.get(paramLong));
    return false;
  }

  private float reportRayFixture(long paramLong, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    if (this.rayCastCallback != null)
    {
      this.rayPoint.x = paramFloat1;
      this.rayPoint.y = paramFloat2;
      this.rayNormal.x = paramFloat3;
      this.rayNormal.y = paramFloat4;
      return this.rayCastCallback.reportRayFixture((Fixture)this.fixtures.get(paramLong), this.rayPoint, this.rayNormal, paramFloat5);
    }
    return 0.0F;
  }

  private native void setUseDefaultContactFilter(boolean paramBoolean);

  public static native void setVelocityThreshold(float paramFloat);

  public final void QueryAABB(QueryCallback paramQueryCallback, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.queryCallback = paramQueryCallback;
    jniQueryAABB(this.addr, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public final void clearForces()
  {
    jniClearForces(this.addr);
  }

  public final Body createBody(BodyDef paramBodyDef)
  {
    long l = jniCreateBody(this.addr, paramBodyDef.type.getValue(), paramBodyDef.position.x, paramBodyDef.position.y, paramBodyDef.angle, paramBodyDef.linearVelocity.x, paramBodyDef.linearVelocity.y, paramBodyDef.angularVelocity, paramBodyDef.linearDamping, paramBodyDef.angularDamping, paramBodyDef.allowSleep, paramBodyDef.awake, paramBodyDef.fixedRotation, paramBodyDef.bullet, paramBodyDef.active, paramBodyDef.gravityScale);
    Body localBody = (Body)this.freeBodies.obtain();
    localBody.reset(l);
    this.bodies.put(localBody.addr, localBody);
    return localBody;
  }

  public final Joint createJoint(JointDef paramJointDef)
  {
    long l = createProperJoint(paramJointDef);
    JointDef.JointType localJointType1 = paramJointDef.type;
    JointDef.JointType localJointType2 = JointDef.JointType.DistanceJoint;
    Object localObject = null;
    if (localJointType1 == localJointType2)
      localObject = new DistanceJoint(this, l);
    if (paramJointDef.type == JointDef.JointType.FrictionJoint)
      localObject = new FrictionJoint(this, l);
    if (paramJointDef.type == JointDef.JointType.GearJoint)
      localObject = new GearJoint(this, l);
    if (paramJointDef.type == JointDef.JointType.MouseJoint)
      localObject = new MouseJoint(this, l);
    if (paramJointDef.type == JointDef.JointType.PrismaticJoint)
      localObject = new PrismaticJoint(this, l);
    if (paramJointDef.type == JointDef.JointType.PulleyJoint)
      localObject = new PulleyJoint(this, l);
    if (paramJointDef.type == JointDef.JointType.RevoluteJoint)
      localObject = new RevoluteJoint(this, l);
    if (paramJointDef.type == JointDef.JointType.WeldJoint)
      localObject = new WeldJoint(this, l);
    if (paramJointDef.type == JointDef.JointType.RopeJoint)
      localObject = new RopeJoint(this, l);
    if (paramJointDef.type == JointDef.JointType.WheelJoint)
      localObject = new WheelJoint(this, l);
    if (localObject != null)
      this.joints.put(((Joint)localObject).addr, localObject);
    JointEdge localJointEdge1 = new JointEdge(paramJointDef.bodyB, (Joint)localObject);
    JointEdge localJointEdge2 = new JointEdge(paramJointDef.bodyA, (Joint)localObject);
    ((Joint)localObject).jointEdgeA = localJointEdge1;
    ((Joint)localObject).jointEdgeB = localJointEdge2;
    paramJointDef.bodyA.joints.add(localJointEdge1);
    paramJointDef.bodyB.joints.add(localJointEdge2);
    return localObject;
  }

  public final void destroyBody(Body paramBody)
  {
    paramBody.setUserData(null);
    this.bodies.remove(paramBody.addr);
    ArrayList localArrayList1 = paramBody.getFixtureList();
    while (!localArrayList1.isEmpty())
      ((Fixture)this.fixtures.remove(((Fixture)localArrayList1.remove(0)).addr)).setUserData(null);
    ArrayList localArrayList2 = paramBody.getJointList();
    while (!localArrayList2.isEmpty())
      destroyJoint(((JointEdge)paramBody.getJointList().get(0)).joint);
    jniDestroyBody(this.addr, paramBody.addr);
    this.freeBodies.free(paramBody);
  }

  public final void destroyJoint(Joint paramJoint)
  {
    this.joints.remove(paramJoint.addr);
    paramJoint.jointEdgeA.other.joints.remove(paramJoint.jointEdgeB);
    paramJoint.jointEdgeB.other.joints.remove(paramJoint.jointEdgeA);
    jniDestroyJoint(this.addr, paramJoint.addr);
  }

  public final void dispose()
  {
    jniDispose(this.addr);
  }

  public final boolean getAutoClearForces()
  {
    return jniGetAutoClearForces(this.addr);
  }

  public final Iterator<Body> getBodies()
  {
    return this.bodies.values();
  }

  public final int getBodyCount()
  {
    return jniGetBodyCount(this.addr);
  }

  public final int getContactCount()
  {
    return jniGetContactCount(this.addr);
  }

  public final List<Contact> getContactList()
  {
    int i = getContactCount();
    if (i > this.contactAddrs.length)
    {
      int n = i * 2;
      this.contactAddrs = new long[n];
      this.contacts.ensureCapacity(n);
      this.freeContacts.ensureCapacity(n);
    }
    if (i > this.freeContacts.size())
    {
      int k = this.freeContacts.size();
      for (int m = 0; m < i - k; m++)
        this.freeContacts.add(new Contact(this, 0L));
    }
    jniGetContactList(this.addr, this.contactAddrs);
    this.contacts.clear();
    for (int j = 0; j < i; j++)
    {
      Contact localContact = (Contact)this.freeContacts.get(j);
      localContact.addr = this.contactAddrs[j];
      this.contacts.add(localContact);
    }
    return this.contacts;
  }

  public final Vector2 getGravity()
  {
    jniGetGravity(this.addr, this.tmpGravity);
    this.gravity.x = this.tmpGravity[0];
    this.gravity.y = this.tmpGravity[1];
    return this.gravity;
  }

  public final int getJointCount()
  {
    return jniGetJointcount(this.addr);
  }

  public final Iterator<Joint> getJoints()
  {
    return this.joints.values();
  }

  public final int getProxyCount()
  {
    return jniGetProxyCount(this.addr);
  }

  public final boolean isLocked()
  {
    return jniIsLocked(this.addr);
  }

  public final void rayCast(RayCastCallback paramRayCastCallback, Vector2 paramVector21, Vector2 paramVector22)
  {
    this.rayCastCallback = paramRayCastCallback;
    jniRayCast(this.addr, paramVector21.x, paramVector21.y, paramVector22.x, paramVector22.y);
  }

  public final void setAutoClearForces(boolean paramBoolean)
  {
    jniSetAutoClearForces(this.addr, paramBoolean);
  }

  public final void setContactFilter(ContactFilter paramContactFilter)
  {
    this.contactFilter = paramContactFilter;
    if (paramContactFilter == null);
    for (boolean bool = true; ; bool = false)
    {
      setUseDefaultContactFilter(bool);
      return;
    }
  }

  public final void setContactListener(ContactListener paramContactListener)
  {
    this.contactListener = paramContactListener;
  }

  public final void setContinuousPhysics(boolean paramBoolean)
  {
    jniSetContiousPhysics(this.addr, paramBoolean);
  }

  public final void setDestructionListener(DestructionListener paramDestructionListener)
  {
  }

  public final void setGravity(Vector2 paramVector2)
  {
    jniSetGravity(this.addr, paramVector2.x, paramVector2.y);
  }

  public final void setWarmStarting(boolean paramBoolean)
  {
    jniSetWarmStarting(this.addr, paramBoolean);
  }

  public final void step(float paramFloat, int paramInt1, int paramInt2)
  {
    jniStep(this.addr, paramFloat, paramInt1, paramInt2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.World
 * JD-Core Version:    0.6.2
 */