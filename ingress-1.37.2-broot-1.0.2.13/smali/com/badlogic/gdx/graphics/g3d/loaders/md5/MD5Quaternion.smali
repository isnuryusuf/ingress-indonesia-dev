.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final inv:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

.field private static final tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->$assertionsDisabled:Z

    .line 95
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    .line 96
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->inv:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 30
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 31
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 32
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->computeW()V

    .line 33
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 37
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 38
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 39
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 40
    return-void
.end method


# virtual methods
.method public computeW()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 52
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 53
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    goto :goto_0
.end method

.method public dot(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)F
    .locals 3
    .parameter

    .prologue
    .line 115
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public invert()V
    .locals 3

    .prologue
    .line 169
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 170
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 171
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 172
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 173
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 174
    return-void
.end method

.method public multiply(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V
    .locals 6
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 73
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 74
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 75
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 77
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 78
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 79
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 80
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 81
    return-void
.end method

.method public multiply(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 6
    .parameter

    .prologue
    .line 84
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    neg-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 85
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 86
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 87
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 89
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 90
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 91
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 92
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 93
    return-void
.end method

.method public normalize()V
    .locals 3

    .prologue
    .line 59
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 61
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 62
    const/high16 v1, 0x3f80

    div-float v0, v1, v0

    .line 64
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 65
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 66
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 67
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 69
    :cond_0
    return-void
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->inv:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    neg-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 100
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->inv:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    neg-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 101
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->inv:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    neg-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 102
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->inv:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 105
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->set(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V

    .line 106
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->multiply(Lcom/badlogic/gdx/math/Vector3;)V

    .line 107
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->inv:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->multiply(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V

    .line 109
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 110
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 111
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->tmp:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 112
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 44
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 45
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 46
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 47
    return-void
.end method

.method public slerp(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;F)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v10, 0x3f80

    .line 119
    cmpg-float v0, p2, v5

    if-gtz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 121
    :cond_0
    cmpl-float v0, p2, v10

    if-ltz v0, :cond_1

    .line 122
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->set(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->dot(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)F

    move-result v4

    .line 128
    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 129
    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 130
    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 131
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 133
    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    .line 134
    neg-float v3, v3

    .line 135
    neg-float v2, v2

    .line 136
    neg-float v1, v1

    .line 137
    neg-float v0, v0

    .line 138
    neg-float v4, v4

    .line 141
    :cond_2
    sget-boolean v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    const v5, 0x3f8ccccd

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_3
    const v5, 0x3f7ff972

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    .line 146
    sub-float v4, v10, p2

    .line 156
    :goto_1
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    mul-float/2addr v5, v4

    mul-float/2addr v3, p2

    add-float/2addr v3, v5

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 157
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, p2

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 158
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    mul-float/2addr v2, v4

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 159
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    mul-float/2addr v1, v4

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    goto :goto_0

    .line 149
    :cond_4
    mul-float v5, v4, v4

    sub-float v5, v10, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 150
    float-to-double v6, v5

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 151
    div-float v5, v10, v5

    .line 152
    sub-float v4, v10, p2

    mul-float/2addr v4, v6

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float/2addr v4, v5

    .line 153
    mul-float/2addr v6, p2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float p2, v6, v5

    goto :goto_1
.end method
