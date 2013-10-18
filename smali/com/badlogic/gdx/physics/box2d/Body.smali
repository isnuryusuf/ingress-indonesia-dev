.class public Lcom/badlogic/gdx/physics/box2d/Body;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected addr:J

.field private fixtures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;"
        }
    .end annotation
.end field

.field protected joints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/JointEdge;",
            ">;"
        }
    .end annotation
.end field

.field public final linVelLoc:Lcom/badlogic/gdx/math/Vector2;

.field public final linVelWorld:Lcom/badlogic/gdx/math/Vector2;

.field private final linearVelocity:Lcom/badlogic/gdx/math/Vector2;

.field private final localCenter:Lcom/badlogic/gdx/math/Vector2;

.field private final localPoint:Lcom/badlogic/gdx/math/Vector2;

.field public final localPoint2:Lcom/badlogic/gdx/math/Vector2;

.field public final localVector:Lcom/badlogic/gdx/math/Vector2;

.field private final massData:Lcom/badlogic/gdx/physics/box2d/MassData;

.field private final position:Lcom/badlogic/gdx/math/Vector2;

.field private final tmp:[F

.field private final transform:Lcom/badlogic/gdx/physics/box2d/Transform;

.field private userData:Ljava/lang/Object;

.field private final world:Lcom/badlogic/gdx/physics/box2d/World;

.field private final worldCenter:Lcom/badlogic/gdx/math/Vector2;

.field private final worldVector:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Transform;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/Transform;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->transform:Lcom/badlogic/gdx/physics/box2d/Transform;

    .line 177
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->position:Lcom/badlogic/gdx/math/Vector2;

    .line 207
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldCenter:Lcom/badlogic/gdx/math/Vector2;

    .line 224
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localCenter:Lcom/badlogic/gdx/math/Vector2;

    .line 256
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    .line 401
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/MassData;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/MassData;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->massData:Lcom/badlogic/gdx/physics/box2d/MassData;

    .line 452
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 471
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldVector:Lcom/badlogic/gdx/math/Vector2;

    .line 490
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint2:Lcom/badlogic/gdx/math/Vector2;

    .line 509
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localVector:Lcom/badlogic/gdx/math/Vector2;

    .line 528
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelWorld:Lcom/badlogic/gdx/math/Vector2;

    .line 547
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelLoc:Lcom/badlogic/gdx/math/Vector2;

    .line 53
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 54
    iput-wide p2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    .line 55
    return-void
.end method

.method private native jniApplyAngularImpulse(JF)V
.end method

.method private native jniApplyForce(JFFFF)V
.end method

.method private native jniApplyForceToCenter(JFF)V
.end method

.method private native jniApplyLinearImpulse(JFFFF)V
.end method

.method private native jniApplyTorque(JF)V
.end method

.method private native jniCreateFixture(JJF)J
.end method

.method private native jniCreateFixture(JJFFFZSSS)J
.end method

.method private native jniDestroyFixture(JJ)V
.end method

.method private native jniGetAngle(J)F
.end method

.method private native jniGetAngularDamping(J)F
.end method

.method private native jniGetAngularVelocity(J)F
.end method

.method private native jniGetGravityScale(J)F
.end method

.method private native jniGetInertia(J)F
.end method

.method private native jniGetLinearDamping(J)F
.end method

.method private native jniGetLinearVelocity(J[F)V
.end method

.method private native jniGetLinearVelocityFromLocalPoint(JFF[F)V
.end method

.method private native jniGetLinearVelocityFromWorldPoint(JFF[F)V
.end method

.method private native jniGetLocalCenter(J[F)V
.end method

.method private native jniGetLocalPoint(JFF[F)V
.end method

.method private native jniGetLocalVector(JFF[F)V
.end method

.method private native jniGetMass(J)F
.end method

.method private native jniGetMassData(J[F)V
.end method

.method private native jniGetPosition(J[F)V
.end method

.method private native jniGetTransform(J[F)V
.end method

.method private native jniGetType(J)I
.end method

.method private native jniGetWorldCenter(J[F)V
.end method

.method private native jniGetWorldPoint(JFF[F)V
.end method

.method private native jniGetWorldVector(JFF[F)V
.end method

.method private native jniIsActive(J)Z
.end method

.method private native jniIsAwake(J)Z
.end method

.method private native jniIsBullet(J)Z
.end method

.method private native jniIsFixedRotation(J)Z
.end method

.method private native jniIsSleepingAllowed(J)Z
.end method

.method private native jniResetMassData(J)V
.end method

.method private native jniSetActive(JZ)V
.end method

.method private native jniSetAngularDamping(JF)V
.end method

.method private native jniSetAngularVelocity(JF)V
.end method

.method private native jniSetAwake(JZ)V
.end method

.method private native jniSetBullet(JZ)V
.end method

.method private native jniSetFixedRotation(JZ)V
.end method

.method private native jniSetGravityScale(JF)V
.end method

.method private native jniSetLinearDamping(JF)V
.end method

.method private native jniSetLinearVelocity(JFF)V
.end method

.method private native jniSetMassData(JFFFF)V
.end method

.method private native jniSetSleepingAllowed(JZ)V
.end method

.method private native jniSetTransform(JFFF)V
.end method

.method private native jniSetType(JI)V
.end method


# virtual methods
.method public applyAngularImpulse(F)V
    .locals 2
    .parameter

    .prologue
    .line 371
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyAngularImpulse(JF)V

    .line 372
    return-void
.end method

.method public applyForce(FFFF)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyForce(JFFFF)V

    .line 308
    return-void
.end method

.method public applyForce(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 297
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyForce(JFFFF)V

    .line 298
    return-void
.end method

.method public applyForceToCenter(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 325
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyForceToCenter(JFF)V

    .line 326
    return-void
.end method

.method public applyForceToCenter(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .parameter

    .prologue
    .line 318
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyForceToCenter(JFF)V

    .line 319
    return-void
.end method

.method public applyLinearImpulse(FFFF)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyLinearImpulse(JFFFF)V

    .line 361
    return-void
.end method

.method public applyLinearImpulse(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 350
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyLinearImpulse(JFFFF)V

    .line 351
    return-void
.end method

.method public applyTorque(F)V
    .locals 2
    .parameter

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniApplyTorque(JF)V

    .line 338
    return-void
.end method

.method public createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;
    .locals 12
    .parameter

    .prologue
    .line 73
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    iget-wide v3, v0, Lcom/badlogic/gdx/physics/box2d/Shape;->addr:J

    iget v5, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    iget v6, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    iget v7, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    iget-boolean v8, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->isSensor:Z

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v9, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v10, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v11, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/badlogic/gdx/physics/box2d/Body;->jniCreateFixture(JJFFFZSSS)J

    move-result-wide v1

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->freeFixtures:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 76
    invoke-virtual {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->reset(Lcom/badlogic/gdx/physics/box2d/Body;J)V

    .line 77
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, v1, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-object v0
.end method

.method public createFixture(Lcom/badlogic/gdx/physics/box2d/Shape;F)Lcom/badlogic/gdx/physics/box2d/Fixture;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 107
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-wide v3, p1, Lcom/badlogic/gdx/physics/box2d/Shape;->addr:J

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniCreateFixture(JJF)J

    move-result-wide v1

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->freeFixtures:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 109
    invoke-virtual {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->reset(Lcom/badlogic/gdx/physics/box2d/Body;J)V

    .line 110
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, v1, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    return-object v0
.end method

.method public destroyFixture(Lcom/badlogic/gdx/physics/box2d/Fixture;)V
    .locals 4
    .parameter

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-wide v2, p1, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->jniDestroyFixture(JJ)V

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v1, p1, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongMap;->remove(J)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->freeFixtures:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public getAngle()F
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetAngle(J)F

    move-result v0

    return v0
.end method

.method public getAngularDamping()F
    .locals 2

    .prologue
    .line 588
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetAngularDamping(J)F

    move-result v0

    return v0
.end method

.method public getAngularVelocity()F
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetAngularVelocity(J)F

    move-result v0

    return v0
.end method

.method public getFixtureList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGravityScale()F
    .locals 2

    .prologue
    .line 771
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetGravityScale(J)F

    move-result v0

    return v0
.end method

.method public getInertia()F
    .locals 2

    .prologue
    .line 393
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetInertia(J)F

    move-result v0

    return v0
.end method

.method public getJointList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/JointEdge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLinearDamping()F
    .locals 2

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetLinearDamping(J)F

    move-result v0

    return v0
.end method

.method public getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetLinearVelocity(J[F)V

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getLinearVelocityFromLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .parameter

    .prologue
    .line 553
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetLinearVelocityFromLocalPoint(JFF[F)V

    .line 554
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelLoc:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 555
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelLoc:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 556
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelLoc:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getLinearVelocityFromWorldPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .parameter

    .prologue
    .line 534
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetLinearVelocityFromWorldPoint(JFF[F)V

    .line 535
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelWorld:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 536
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelWorld:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 537
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->linVelWorld:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getLocalCenter()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetLocalCenter(J[F)V

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localCenter:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localCenter:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localCenter:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .parameter

    .prologue
    .line 496
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetLocalPoint(JFF[F)V

    .line 497
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 498
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 499
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint2:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getLocalVector(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .parameter

    .prologue
    .line 515
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetLocalVector(JFF[F)V

    .line 516
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localVector:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 517
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localVector:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 518
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localVector:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getMass()F
    .locals 2

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetMass(J)F

    move-result v0

    return v0
.end method

.method public getMassData()Lcom/badlogic/gdx/physics/box2d/MassData;
    .locals 3

    .prologue
    .line 406
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetMassData(J[F)V

    .line 407
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->massData:Lcom/badlogic/gdx/physics/box2d/MassData;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/MassData;->mass:F

    .line 408
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->massData:Lcom/badlogic/gdx/physics/box2d/MassData;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/MassData;->center:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 409
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->massData:Lcom/badlogic/gdx/physics/box2d/MassData;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/MassData;->center:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 410
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->massData:Lcom/badlogic/gdx/physics/box2d/MassData;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/MassData;->I:F

    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->massData:Lcom/badlogic/gdx/physics/box2d/MassData;

    return-object v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetPosition(J[F)V

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->position:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getTransform()Lcom/badlogic/gdx/physics/box2d/Transform;
    .locals 3

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->transform:Lcom/badlogic/gdx/physics/box2d/Transform;

    iget-object v2, v2, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetTransform(J[F)V

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->transform:Lcom/badlogic/gdx/physics/box2d/Transform;

    return-object v0
.end method

.method public getType()Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .locals 2

    .prologue
    .line 632
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetType(J)I

    move-result v0

    .line 633
    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 636
    :goto_0
    return-object v0

    .line 634
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    goto :goto_0

    .line 635
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    goto :goto_0

    .line 636
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    goto :goto_0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getWorld()Lcom/badlogic/gdx/physics/box2d/World;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    return-object v0
.end method

.method public getWorldCenter()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetWorldCenter(J[F)V

    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldCenter:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldCenter:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldCenter:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getWorldPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .parameter

    .prologue
    .line 458
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetWorldPoint(JFF[F)V

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->localPoint:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getWorldVector(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .parameter

    .prologue
    .line 477
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniGetWorldVector(JFF[F)V

    .line 478
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldVector:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 479
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldVector:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 480
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->worldVector:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 723
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniIsActive(J)Z

    move-result v0

    return v0
.end method

.method public isAwake()Z
    .locals 2

    .prologue
    .line 698
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniIsAwake(J)Z

    move-result v0

    return v0
.end method

.method public isBullet()Z
    .locals 2

    .prologue
    .line 656
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniIsBullet(J)Z

    move-result v0

    return v0
.end method

.method public isFixedRotation()Z
    .locals 2

    .prologue
    .line 743
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniIsFixedRotation(J)Z

    move-result v0

    return v0
.end method

.method public isSleepingAllowed()Z
    .locals 2

    .prologue
    .line 676
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniIsSleepingAllowed(J)Z

    move-result v0

    return v0
.end method

.method protected reset(J)V
    .locals 3
    .parameter

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->userData:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, v1, Lcom/badlogic/gdx/physics/box2d/World;->freeFixtures:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->fixtures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    return-void
.end method

.method public resetMassData()V
    .locals 2

    .prologue
    .line 444
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniResetMassData(J)V

    .line 445
    return-void
.end method

.method public setActive(Z)V
    .locals 2
    .parameter

    .prologue
    .line 713
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetActive(JZ)V

    .line 714
    return-void
.end method

.method public setAngularDamping(F)V
    .locals 2
    .parameter

    .prologue
    .line 598
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetAngularDamping(JF)V

    .line 599
    return-void
.end method

.method public setAngularVelocity(F)V
    .locals 2
    .parameter

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetAngularVelocity(JF)V

    .line 275
    return-void
.end method

.method public setAwake(Z)V
    .locals 2
    .parameter

    .prologue
    .line 687
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetAwake(JZ)V

    .line 688
    return-void
.end method

.method public setBullet(Z)V
    .locals 2
    .parameter

    .prologue
    .line 646
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetBullet(JZ)V

    .line 647
    return-void
.end method

.method public setFixedRotation(Z)V
    .locals 2
    .parameter

    .prologue
    .line 733
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetFixedRotation(JZ)V

    .line 734
    return-void
.end method

.method public setGravityScale(F)V
    .locals 2
    .parameter

    .prologue
    .line 781
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetGravityScale(JF)V

    .line 782
    return-void
.end method

.method public setLinearDamping(F)V
    .locals 2
    .parameter

    .prologue
    .line 578
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetLinearDamping(JF)V

    .line 579
    return-void
.end method

.method public setLinearVelocity(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 247
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetLinearVelocity(JFF)V

    .line 248
    return-void
.end method

.method public setLinearVelocity(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .parameter

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetLinearVelocity(JFF)V

    .line 243
    return-void
.end method

.method public setMassData(Lcom/badlogic/gdx/physics/box2d/MassData;)V
    .locals 7
    .parameter

    .prologue
    .line 428
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/physics/box2d/MassData;->mass:F

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/MassData;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/MassData;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p1, Lcom/badlogic/gdx/physics/box2d/MassData;->I:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetMassData(JFFFF)V

    .line 429
    return-void
.end method

.method public setSleepingAllowed(Z)V
    .locals 2
    .parameter

    .prologue
    .line 666
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetSleepingAllowed(JZ)V

    .line 667
    return-void
.end method

.method public setTransform(FFF)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetTransform(JFFF)V

    .line 154
    return-void
.end method

.method public setTransform(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 144
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetTransform(JFFF)V

    .line 145
    return-void
.end method

.method public setType(Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V
    .locals 3
    .parameter

    .prologue
    .line 608
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->getValue()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->jniSetType(JI)V

    .line 609
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Body;->userData:Ljava/lang/Object;

    .line 802
    return-void
.end method
