.class public Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static animations:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private animationRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

.field private assetName:Ljava/lang/String;

.field private materials:[Lcom/badlogic/gdx/graphics/g3d/Material;

.field private numMeshes:I

.field private taggedJointNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private target:[Lcom/badlogic/gdx/graphics/Mesh;

.field private visible:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animationRefs:Ljava/util/ArrayList;

    .line 47
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    .line 48
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    .line 49
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    return-void
.end method

.method private clone([F)[F
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 210
    array-length v0, p1

    new-array v0, v0, [F

    .line 211
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    return-object v0
.end method

.method private clone([S)[S
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 204
    array-length v0, p1

    new-array v0, v0, [S

    .line 205
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animationRefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    .line 295
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->removeRef()I

    move-result v1

    if-nez v1, :cond_0

    .line 297
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 301
    if-eqz v3, :cond_2

    .line 302
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 300
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 306
    :cond_3
    return-void
.end method

.method public getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
    .locals 3
    .parameter

    .prologue
    .line 240
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->assetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    return-object v0
.end method

.method public getAnimator()Lcom/badlogic/gdx/graphics/g3d/Animator;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    return-object v0
.end method

.method public getJointData(ILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getInterpolatedKeyframe()Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-result-object v0

    .line 217
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 218
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v1, p3, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 219
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v1, p3, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 220
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v1, p3, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 221
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iput v0, p3, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 222
    return-void
.end method

.method public render()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 272
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    if-ge v0, v2, :cond_3

    .line 274
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->materials:[Lcom/badlogic/gdx/graphics/g3d/Material;

    aget-object v2, v2, v0

    .line 275
    if-eqz v2, :cond_1

    .line 276
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    if-eqz v3, :cond_0

    .line 277
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/TextureRef;->bind()V

    .line 279
    :cond_0
    const/16 v3, 0x404

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(I)V

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Mesh;->render(III)V

    .line 272
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_3
    return-void
.end method

.method public sampleAnimationFromMD5(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;FLjava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->assetName:Ljava/lang/String;

    .line 89
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    .line 90
    const/4 v3, 0x0

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    if-nez v2, :cond_0

    .line 93
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    move/from16 v0, p5

    invoke-direct {v2, v4, v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;-><init>(IF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    .line 94
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    .line 95
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    new-array v2, v2, [Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    .line 96
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 97
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v2

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez v2, :cond_1

    .line 102
    new-instance v2, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 104
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    const/4 v2, 0x0

    .line 107
    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    .line 109
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->addRef()V

    .line 110
    const/4 v3, 0x1

    .line 112
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animationRefs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Clamp:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/Animation;Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;)V

    .line 116
    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    array-length v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p4

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->secondsPerFrame:F

    mul-float v10, v5, v6

    .line 117
    div-float v5, v10, p5

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    .line 119
    if-nez v3, :cond_d

    .line 120
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->name:Ljava/lang/String;

    move/from16 v0, p5

    invoke-direct {v2, v6, v5, v10, v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;-><init>(Ljava/lang/String;IFF)V

    .line 121
    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v4, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 124
    :goto_1
    const v2, 0x3dcccccd

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->update(F)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->getSkeleton()Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->setSkeleton(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;)V

    .line 127
    const/4 v5, 0x0

    .line 129
    const/4 v2, 0x0

    move v8, v2

    move v9, v5

    :goto_2
    cmpg-float v2, v8, v10

    if-gez v2, :cond_b

    .line 131
    const/4 v2, 0x0

    .line 132
    if-nez v3, :cond_c

    .line 133
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;-><init>()V

    .line 134
    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    new-array v5, v5, [[F

    iput-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    .line 135
    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    new-array v5, v5, [[S

    iput-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    .line 136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 137
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    .line 138
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/badlogic/gdx/math/Quaternion;

    iput-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    :cond_3
    move-object v5, v2

    .line 141
    :goto_3
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    if-ge v2, v6, :cond_6

    .line 142
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->getVertices(I)[F

    move-result-object v6

    .line 143
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->getIndices(I)[S

    move-result-object v7

    .line 144
    array-length v11, v6

    .line 145
    array-length v12, v7

    .line 146
    if-nez v3, :cond_4

    .line 147
    iget-object v13, v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->clone([F)[F

    move-result-object v6

    aput-object v6, v13, v2

    .line 148
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->clone([S)[S

    move-result-object v7

    aput-object v7, v6, v2

    .line 151
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v6, v6, v2

    if-nez v6, :cond_5

    .line 152
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v6, v2, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->setKeyframeDimensions(III)V

    .line 153
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->setNumTaggedJoints(I)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->getMesh()Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v6

    .line 156
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    new-instance v13, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v14, 0x0

    invoke-direct {v13, v14, v11, v12, v6}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    aput-object v13, v7, v2

    .line 157
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    const/16 v7, 0x8

    if-eq v6, v7, :cond_5

    .line 158
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v3, "Mesh vertexattributes != 8 - is this a valid MD5 source mesh?"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 162
    :cond_6
    if-nez v3, :cond_a

    .line 164
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->getSkeleton()Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-result-object v11

    .line 165
    const/4 v2, 0x0

    move v6, v2

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_9

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    const/4 v7, 0x0

    :goto_6
    iget v12, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    if-ge v7, v12, :cond_7

    .line 168
    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    aget-object v12, v12, v7

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 169
    mul-int/lit8 v2, v7, 0x8

    .line 171
    iget-object v7, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v12, v2, 0x1

    aget v7, v7, v12

    .line 172
    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v13, v2, 0x2

    aget v12, v12, v13

    .line 173
    iget-object v13, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v14, v2, 0x3

    aget v13, v13, v14

    .line 174
    iget-object v14, v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    new-instance v15, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v15, v7, v12, v13}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v15, v14, v6

    .line 175
    iget-object v7, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v12, v2, 0x4

    aget v7, v7, v12

    .line 176
    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v13, v2, 0x5

    aget v12, v12, v13

    .line 177
    iget-object v13, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v14, v2, 0x6

    aget v13, v13, v14

    .line 178
    iget-object v14, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v2, v2, 0x7

    aget v2, v14, v2

    .line 179
    iget-object v14, v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    new-instance v15, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v15, v7, v12, v13, v2}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    aput-object v15, v14, v6

    .line 165
    :cond_7
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_5

    .line 167
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 185
    :cond_9
    iget-object v2, v4, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->keyframes:[Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    aput-object v5, v2, v9

    .line 187
    :cond_a
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->update(F)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->getSkeleton()Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->setSkeleton(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;)V

    .line 189
    add-int/lit8 v5, v9, 0x1

    .line 129
    add-float v2, v8, p5

    move v8, v2

    move v9, v5

    goto/16 :goto_2

    .line 192
    :cond_b
    return-object v4

    :cond_c
    move-object v5, v2

    goto/16 :goto_3

    :cond_d
    move-object v4, v2

    goto/16 :goto_1
.end method

.method public setAnimation(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/Animation;Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;)V

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getInterpolatedKeyframe()Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-result-object v0

    iput-boolean v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSet:Z

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getInterpolatedKeyframe()Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-result-object v0

    iput-boolean v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    .line 234
    :cond_0
    return-void
.end method

.method public setMaterials([Lcom/badlogic/gdx/graphics/g3d/Material;)V
    .locals 3
    .parameter

    .prologue
    .line 62
    array-length v0, p1

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g3d/Material;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->materials:[Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 63
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->materials:[Lcom/badlogic/gdx/graphics/g3d/Material;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public setMeshVisible(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    aput-boolean p2, v0, p1

    .line 290
    return-void
.end method

.method public setTaggedJoints(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    .line 72
    return-void
.end method

.method public update(F)V
    .locals 4
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->update(F)V

    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->hasAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getInterpolatedKeyframe()Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-result-object v1

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getCurrentWrapMode()Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->SingleFrame:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    if-ne v0, v2, :cond_1

    iget-boolean v0, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    if-ge v0, v2, :cond_3

    .line 259
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    .line 260
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    if-nez v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    .line 258
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    goto :goto_0
.end method
