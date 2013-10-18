.class public Lcom/badlogic/gdx/physics/box2d/ChainShape;
.super Lcom/badlogic/gdx/physics/box2d/Shape;
.source "SourceFile"


# static fields
.field private static verts:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->verts:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 26
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->newChainShape()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    .line 27
    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    .line 35
    return-void
.end method

.method private native jniCreateChain(J[FI)V
.end method

.method private native jniCreateLoop(J[FI)V
.end method

.method private native jniGetVertex(JI[F)V
.end method

.method private native jniGetVertexCount(J)I
.end method

.method private native jniSetNextVertex(JFF)V
.end method

.method private native jniSetPrevVertex(JFF)V
.end method

.method private native newChainShape()J
.end method


# virtual methods
.method public createChain([Lcom/badlogic/gdx/math/Vector2;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [F

    move v1, v0

    .line 66
    :goto_0
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_0

    .line 67
    aget-object v3, p1, v0

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v1

    .line 68
    add-int/lit8 v3, v1, 0x1

    aget-object v4, p1, v0

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v4, v2, v3

    .line 66
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    array-length v3, v2

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->jniCreateChain(J[FI)V

    .line 71
    return-void
.end method

.method public createLoop([Lcom/badlogic/gdx/math/Vector2;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [F

    move v1, v0

    .line 46
    :goto_0
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_0

    .line 47
    aget-object v3, p1, v0

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v1

    .line 48
    add-int/lit8 v3, v1, 0x1

    aget-object v4, p1, v0

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v4, v2, v3

    .line 46
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    array-length v3, v2

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->jniCreateLoop(J[FI)V

    .line 51
    return-void
.end method

.method public getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Chain:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    return-object v0
.end method

.method public getVertex(ILcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/ChainShape;->verts:[F

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->jniGetVertex(JI[F)V

    .line 129
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->verts:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 130
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->verts:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 131
    return-void
.end method

.method public getVertexCount()I
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->jniGetVertexCount(J)I

    move-result v0

    return v0
.end method

.method public setNextVertex(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->jniSetNextVertex(JFF)V

    .line 105
    return-void
.end method

.method public setNextVertex(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->setNextVertex(FF)V

    .line 100
    return-void
.end method

.method public setPrevVertex(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/ChainShape;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->jniSetPrevVertex(JFF)V

    .line 90
    return-void
.end method

.method public setPrevVertex(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->setPrevVertex(FF)V

    .line 85
    return-void
.end method
