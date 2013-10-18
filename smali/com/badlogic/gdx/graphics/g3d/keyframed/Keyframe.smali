.class public Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public indices:[[S

.field public indicesSent:Z

.field public indicesSet:Z

.field public taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

.field public taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

.field public vertices:[[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    .line 27
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    .line 28
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSet:Z

    .line 29
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    .line 31
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    .line 32
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    return-void
.end method
