.class public Lcom/badlogic/gdx/math/Matrix4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final M00:I = 0x0

.field public static final M01:I = 0x4

.field public static final M02:I = 0x8

.field public static final M03:I = 0xc

.field public static final M10:I = 0x1

.field public static final M11:I = 0x5

.field public static final M12:I = 0x9

.field public static final M13:I = 0xd

.field public static final M20:I = 0x2

.field public static final M21:I = 0x6

.field public static final M22:I = 0xa

.field public static final M23:I = 0xe

.field public static final M30:I = 0x3

.field public static final M31:I = 0x7

.field public static final M32:I = 0xb

.field public static final M33:I = 0xf

.field static l_vex:Lcom/badlogic/gdx/math/Vector3; = null

.field static l_vey:Lcom/badlogic/gdx/math/Vector3; = null

.field static l_vez:Lcom/badlogic/gdx/math/Vector3; = null

.field static quat:Lcom/badlogic/gdx/math/Quaternion; = null

.field static right:Lcom/badlogic/gdx/math/Vector3; = null

.field private static final serialVersionUID:J = -0x25b70d0e1a139be1L

.field static tmpForward:Lcom/badlogic/gdx/math/Vector3;

.field static final tmpMat:Lcom/badlogic/gdx/math/Matrix4;

.field static tmpUp:Lcom/badlogic/gdx/math/Vector3;

.field static final tmpV:Lcom/badlogic/gdx/math/Vector3;

.field static final tmpVec:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public final tmp:[F

.field public final val:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 520
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    .line 546
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    .line 585
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    .line 586
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    .line 587
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    .line 614
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    .line 615
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    .line 631
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    .line 632
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    .line 633
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0x10

    const/high16 v2, 0x3f80

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput v2, v0, v1

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x10

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 59
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x10

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 71
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 72
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x10

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 65
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    .line 66
    return-void
.end method

.method public static native det([F)F
.end method

.method public static native inv([F)Z
.end method

.method public static native mul([F[F)V
.end method

.method public static native mulVec([F[F)V
.end method

.method public static native mulVec([F[FIII)V
.end method

.method public static native prj([F[F)V
.end method

.method public static native prj([F[FIII)V
.end method

.method public static native rot([F[F)V
.end method

.method public static native rot([F[FIII)V
.end method


# virtual methods
.method public cpy()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    return-object v0
.end method

.method public det()F
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v7

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getRotation(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 0
    .parameter

    .prologue
    .line 702
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Quaternion;->setFromMatrix(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;

    .line 703
    return-void
.end method

.method public getTranslation(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2
    .parameter

    .prologue
    .line 696
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 697
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 698
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 699
    return-void
.end method

.method public getValues()[F
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    return-object v0
.end method

.method public idt()Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 266
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 270
    return-object p0
.end method

.method public inv()Lcom/badlogic/gdx/math/Matrix4;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v10

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v9

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v10

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v9

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v10

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v9

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v10

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v11

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v9

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v11

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v10

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v10

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v11

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v11

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v9

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v9

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v11

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v11

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 286
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "non-invertible matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    const/high16 v1, 0x3f80

    div-float v0, v1, v0

    .line 288
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v7

    .line 290
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v11

    .line 292
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 294
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 296
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v10

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v8

    .line 298
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v10

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v9

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v9

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 300
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v10

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 302
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v9

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 304
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v10

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v9

    .line 306
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v10

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v9

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v9

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 308
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v10

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xf

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 310
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v9

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xd

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 312
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v10

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v10

    .line 314
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v10

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v9

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v9

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 316
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v10

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 318
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v9

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v9

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 320
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v2, v2, v7

    mul-float/2addr v2, v0

    aput v2, v1, v7

    .line 321
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v2, v2, v11

    mul-float/2addr v2, v0

    aput v2, v1, v11

    .line 322
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 323
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 324
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v2, v2, v8

    mul-float/2addr v2, v0

    aput v2, v1, v8

    .line 325
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 326
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 327
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 328
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v2, v2, v9

    mul-float/2addr v2, v0

    aput v2, v1, v9

    .line 329
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 330
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v4, 0xa

    aget v3, v3, v4

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 331
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v4, 0xe

    aget v3, v3, v4

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 332
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    aget v2, v2, v10

    mul-float/2addr v2, v0

    aput v2, v1, v10

    .line 333
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 334
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v4, 0xb

    aget v3, v3, v4

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 335
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v4, 0xf

    aget v3, v3, v4

    mul-float/2addr v0, v3

    aput v0, v1, v2

    .line 336
    return-object p0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Matrix4;F)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 655
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 656
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f80

    sub-float/2addr v3, p2

    mul-float/2addr v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v0

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_0
    return-void
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v10

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v6

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v10

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v10

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v10

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v7

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v7

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v7

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v7

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v7

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v8

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v8

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v8

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v9

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v9

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v9

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v10

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xb

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xf

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 220
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v9

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xb

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xf

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v9

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xb

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xf

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 224
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1023
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    .line 1025
    :goto_0
    return-object p0

    .line 1024
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 1025
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    goto :goto_0
.end method

.method public rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .parameter

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Quaternion;->toMatrix([F)V

    .line 1035
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 1036
    return-object p0
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1010
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 1012
    :goto_0
    return-object p0

    .line 1011
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 1012
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    goto :goto_0
.end method

.method public scale(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1045
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1046
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 1047
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 1048
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 1049
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 1050
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 1051
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 1052
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 1053
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 1054
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 1055
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xa

    aput p3, v0, v1

    .line 1056
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 1057
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 1058
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 1059
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 1060
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 1062
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 1063
    return-object p0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter

    .prologue
    .line 689
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 690
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 691
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 692
    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4
    .parameter

    .prologue
    .line 682
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 683
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 684
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 685
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 662
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 663
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 664
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 665
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aput v4, v0, v6

    .line 666
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v6

    aput v2, v0, v1

    .line 667
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 668
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v0, v1

    .line 669
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v4, v0, v1

    .line 670
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aput v4, v0, v1

    .line 671
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aput v4, v0, v1

    .line 672
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 673
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aput v4, v0, v1

    .line 674
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v1

    .line 675
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v1

    .line 676
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v4, v0, v1

    .line 677
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    aput v2, v0, v1

    .line 678
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 14
    .parameter

    .prologue
    .line 97
    iget v0, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    .line 98
    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    .line 99
    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v2, v3

    .line 100
    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    .line 101
    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    .line 102
    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    .line 103
    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v7, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v6, v7

    .line 104
    iget v7, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v8, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v8

    .line 105
    iget v8, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v9, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v9

    .line 107
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/high16 v12, 0x4000

    add-float v13, v4, v7

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, v9, v10

    .line 108
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x4

    const/high16 v11, 0x4000

    sub-float v12, v1, v8

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 109
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v10, 0x8

    const/high16 v11, 0x4000

    add-float v12, v2, v6

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 110
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 111
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v10, 0x1

    const/high16 v11, 0x4000

    add-float/2addr v1, v8

    mul-float/2addr v1, v11

    aput v1, v9, v10

    .line 112
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v8, 0x5

    const/high16 v9, 0x3f80

    const/high16 v10, 0x4000

    add-float/2addr v7, v0

    mul-float/2addr v7, v10

    sub-float v7, v9, v7

    aput v7, v1, v8

    .line 113
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0x9

    const/high16 v8, 0x4000

    sub-float v9, v5, v3

    mul-float/2addr v8, v9

    aput v8, v1, v7

    .line 114
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput v8, v1, v7

    .line 115
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x2

    const/high16 v8, 0x4000

    sub-float/2addr v2, v6

    mul-float/2addr v2, v8

    aput v2, v1, v7

    .line 116
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    const/high16 v6, 0x4000

    add-float/2addr v3, v5

    mul-float/2addr v3, v6

    aput v3, v1, v2

    .line 117
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xa

    const/high16 v3, 0x3f80

    const/high16 v5, 0x4000

    add-float/2addr v0, v4

    mul-float/2addr v0, v5

    sub-float v0, v3, v0

    aput v0, v1, v2

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 123
    return-object p0
.end method

.method public set([F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    iget v2, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 150
    return-void
.end method

.method public setFromEulerAngles(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 555
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Quaternion;->setEulerAngles(FFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 556
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 596
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 597
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 598
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 599
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 600
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 601
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 602
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 603
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vex:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 604
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 605
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 606
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vey:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 607
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 608
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 609
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->l_vez:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v2, v2

    aput v2, v0, v1

    .line 611
    return-object p0
.end method

.method public setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 625
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, p3}, Lcom/badlogic/gdx/math/Matrix4;->setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 626
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    const/high16 v2, -0x4080

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 628
    return-object p0
.end method

.method public setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/4 v8, 0x0

    .line 424
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 425
    sub-float v0, p2, p1

    div-float v0, v2, v0

    .line 426
    sub-float v1, p4, p3

    div-float v1, v2, v1

    .line 427
    const/high16 v2, -0x4000

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    .line 429
    add-float v3, p2, p1

    neg-float v3, v3

    sub-float v4, p2, p1

    div-float/2addr v3, v4

    .line 430
    add-float v4, p4, p3

    neg-float v4, v4

    sub-float v5, p4, p3

    div-float/2addr v4, v5

    .line 431
    add-float v5, p6, p5

    neg-float v5, v5

    sub-float v6, p6, p5

    div-float/2addr v5, v6

    .line 433
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x0

    aput v0, v6, v7

    .line 434
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x1

    aput v8, v0, v6

    .line 435
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x2

    aput v8, v0, v6

    .line 436
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x3

    aput v8, v0, v6

    .line 437
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x4

    aput v8, v0, v6

    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v6, 0x5

    aput v1, v0, v6

    .line 439
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aput v8, v0, v1

    .line 440
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x7

    aput v8, v0, v1

    .line 441
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aput v8, v0, v1

    .line 442
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aput v8, v0, v1

    .line 443
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput v2, v0, v1

    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    aput v8, v0, v1

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 446
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput v4, v0, v1

    .line 447
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v5, v0, v1

    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 450
    return-object p0
.end method

.method public setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 393
    add-float v2, p1, p3

    add-float v4, p2, p4

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 394
    return-object p0
.end method

.method public setToOrtho2D(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    add-float v2, p1, p3

    add-float v4, p2, p4

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 409
    return-object p0
.end method

.method public setToProjection(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 361
    const-wide/high16 v0, 0x3ff0

    float-to-double v2, p3

    const-wide v4, 0x3f91df46a2529d39L

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 362
    add-float v1, p2, p1

    sub-float v2, p1, p2

    div-float/2addr v1, v2

    .line 363
    const/high16 v2, 0x4000

    mul-float/2addr v2, p2

    mul-float/2addr v2, p1

    sub-float v3, p1, p2

    div-float/2addr v2, v3

    .line 364
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x0

    div-float v5, v0, p4

    aput v5, v3, v4

    .line 365
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x1

    aput v6, v3, v4

    .line 366
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x2

    aput v6, v3, v4

    .line 367
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x3

    aput v6, v3, v4

    .line 368
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x4

    aput v6, v3, v4

    .line 369
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aput v0, v3, v4

    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aput v6, v0, v3

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aput v6, v0, v3

    .line 372
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aput v6, v0, v3

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aput v6, v0, v3

    .line 374
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aput v1, v0, v3

    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xb

    const/high16 v3, -0x4080

    aput v3, v0, v1

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput v6, v0, v1

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput v6, v0, v1

    .line 378
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 379
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xf

    aput v6, v0, v1

    .line 381
    return-object p0
.end method

.method public setToRotation(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 542
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    .line 543
    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpV:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    goto :goto_0
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 529
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->quat:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p0

    goto :goto_0
.end method

.method public setToScaling(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 579
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 580
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 581
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput p3, v0, v1

    .line 582
    return-object p0
.end method

.method public setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 565
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 566
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 567
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 568
    return-object p0
.end method

.method public setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 475
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 476
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 477
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 478
    return-object p0
.end method

.method public setToTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 462
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 463
    return-object p0
.end method

.method public setToTranslationAndScaling(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 511
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 512
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 513
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 514
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput p4, v0, v1

    .line 515
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aput p5, v0, v1

    .line 516
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aput p6, v0, v1

    .line 517
    return-object p0
.end method

.method public setToTranslationAndScaling(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 489
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 490
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 491
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 492
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    .line 493
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 494
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 495
    return-object p0
.end method

.method public setToWorld(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 636
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 637
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 638
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 640
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->right:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->tmpUp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->tmpForward:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 641
    return-object p0
.end method

.method public toNormalMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 707
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 708
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 709
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 710
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    .line 711
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->tra()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]\n["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xd

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]\n["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xe

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]\n["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xb

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xf

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tra()Lcom/badlogic/gdx/math/Matrix4;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v3

    aput v1, v0, v6

    .line 233
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v4

    aput v2, v0, v1

    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v5

    aput v2, v0, v1

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    aput v1, v0, v3

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v0, v1

    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v1

    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v1

    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    aput v1, v0, v4

    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    aput v2, v0, v1

    .line 241
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    aput v2, v0, v1

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    aput v2, v0, v1

    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    aput v1, v0, v5

    .line 244
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    aput v2, v0, v1

    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xe

    aget v2, v2, v3

    aput v2, v0, v1

    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    aput v2, v0, v1

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public translate(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 982
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 983
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 984
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 985
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 986
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 987
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 988
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 989
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 990
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 991
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 992
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 993
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 994
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 995
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 996
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 997
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 999
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 1000
    return-object p0
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter

    .prologue
    .line 972
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public trn(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v2, v0, v1

    add-float/2addr v2, p3

    aput v2, v0, v1

    .line 178
    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xd

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xe

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 165
    return-object p0
.end method
