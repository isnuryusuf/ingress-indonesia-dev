.class public Lcom/badlogic/gdx/scenes/scene2d/Group;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;


# instance fields
.field private final batchTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private final children:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation
.end field

.field private cullingArea:Lcom/badlogic/gdx/math/Rectangle;

.field private final localTransform:Lcom/badlogic/gdx/math/Matrix3;

.field private final oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private final point:Lcom/badlogic/gdx/math/Vector2;

.field private transform:Z

.field private final worldTransform:Lcom/badlogic/gdx/math/Matrix3;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x4

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->batchTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 41
    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 49
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x4

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->batchTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 41
    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    .line 50
    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 4
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 55
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_0
    if-ge v1, v2, :cond_0

    .line 56
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 58
    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .parameter

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 219
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 220
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 221
    return-void
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 252
    :goto_0
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 253
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 254
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 255
    return-void

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    .line 227
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 228
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 229
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 230
    return-void
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, v0, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    .line 238
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 239
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 240
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 241
    return-void
.end method

.method protected applyTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 142
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 143
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 144
    return-void
.end method

.method protected childrenChanged()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 273
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_0
    if-ge v1, v2, :cond_0

    .line 274
    aget-object v3, v0, v1

    .line 275
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 276
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->clear()V

    .line 280
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 281
    return-void
.end method

.method protected computeTransform()Lcom/badlogic/gdx/math/Matrix4;
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    .line 150
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getOriginX()F

    move-result v1

    .line 151
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getOriginY()F

    move-result v2

    .line 152
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getRotation()F

    move-result v3

    .line 153
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getScaleX()F

    move-result v4

    .line 154
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getScaleY()F

    move-result v5

    .line 156
    cmpl-float v6, v1, v7

    if-nez v6, :cond_0

    cmpl-float v6, v2, v7

    if-eqz v6, :cond_6

    .line 157
    :cond_0
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v6, v1, v2}, Lcom/badlogic/gdx/math/Matrix3;->setToTranslation(FF)Lcom/badlogic/gdx/math/Matrix3;

    .line 160
    :goto_0
    cmpl-float v6, v3, v7

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Matrix3;->setToRotation(F)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/math/Matrix3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    .line 161
    :cond_1
    cmpl-float v3, v4, v8

    if-nez v3, :cond_2

    cmpl-float v3, v5, v8

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/math/Matrix3;->setToScaling(FF)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    .line 162
    :cond_3
    cmpl-float v3, v1, v7

    if-nez v3, :cond_4

    cmpl-float v3, v2, v7

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    neg-float v1, v1

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix3;->setToTranslation(FF)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Matrix3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix3;->trn(FF)Lcom/badlogic/gdx/math/Matrix3;

    .line 166
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 167
    :goto_1
    if-eqz v0, :cond_7

    .line 168
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-nez v1, :cond_7

    .line 169
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    goto :goto_1

    .line 159
    :cond_6
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    goto :goto_0

    .line 172
    :cond_7
    if-eqz v0, :cond_8

    .line 173
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    .line 179
    :goto_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->batchTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->batchTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0

    .line 176
    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Matrix3;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->localTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    goto :goto_2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 65
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 66
    :cond_1
    return-void
.end method

.method protected drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v2, p2, v0

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 76
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    if-eqz v3, :cond_5

    .line 78
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_0
    if-ge v1, v3, :cond_1

    .line 80
    aget-object v4, v0, v1

    .line 81
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v5

    .line 83
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v6

    .line 84
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v7, v8

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v7, v8

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_0

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v7

    add-float/2addr v5, v7

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_0

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 86
    invoke-virtual {v4, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 135
    return-void

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getX()F

    move-result v3

    .line 93
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getY()F

    move-result v4

    .line 94
    invoke-virtual {p0, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setPosition(FF)V

    .line 95
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v5, v5, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_2
    if-ge v1, v5, :cond_4

    .line 96
    aget-object v6, v0, v1

    .line 97
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 98
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v7

    .line 99
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v8

    .line 100
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v9, v10

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_3

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v9, v10

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_3

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v9

    add-float/2addr v9, v7

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_3

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v9

    add-float/2addr v9, v8

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_3

    .line 102
    invoke-virtual {v6, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->translate(FF)V

    .line 103
    invoke-virtual {v6, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 104
    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    .line 95
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 107
    :cond_4
    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setPosition(FF)V

    goto :goto_1

    .line 110
    :cond_5
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v3, :cond_8

    .line 111
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_3
    if-ge v1, v3, :cond_7

    .line 112
    aget-object v4, v0, v1

    .line 113
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 114
    invoke-virtual {v4, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 111
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 116
    :cond_7
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    goto/16 :goto_1

    .line 119
    :cond_8
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getX()F

    move-result v3

    .line 120
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getY()F

    move-result v4

    .line 121
    invoke-virtual {p0, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setPosition(FF)V

    .line 122
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v5, v5, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_4
    if-ge v1, v5, :cond_a

    .line 123
    aget-object v6, v0, v1

    .line 124
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 125
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v7

    .line 126
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v8

    .line 127
    invoke-virtual {v6, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->translate(FF)V

    .line 128
    invoke-virtual {v6, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 129
    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    .line 122
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 131
    :cond_a
    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setPosition(FF)V

    goto/16 :goto_1
.end method

.method public getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/SnapshotArray",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 207
    :cond_0
    :goto_0
    return-object v0

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 200
    iget v0, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 201
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 202
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 204
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 205
    if-nez v0, :cond_0

    .line 200
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 207
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    goto :goto_0
.end method

.method public isTransform()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    return v0
.end method

.method public localToDescendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 330
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Child is not a descendant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    if-eq v0, p0, :cond_1

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->localToDescendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)V

    .line 334
    :cond_1
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 335
    return-void
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 261
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 264
    :cond_1
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 265
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 266
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    goto :goto_0
.end method

.method protected resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 188
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 189
    return-void
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    .line 195
    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 4
    .parameter

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 285
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 286
    const/4 v0, 0x0

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 287
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 286
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 288
    :cond_0
    return-void
.end method

.method public setTransform(Z)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    .line 320
    return-void
.end method

.method public swapActor(II)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .line 293
    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->swap(II)V

    .line 296
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public swapActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 301
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v1

    .line 302
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v2, p2, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v2

    .line 303
    if-eq v1, v3, :cond_0

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    .line 304
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->swap(II)V

    goto :goto_0
.end method
