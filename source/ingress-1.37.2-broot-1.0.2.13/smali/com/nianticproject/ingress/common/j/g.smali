.class public final Lcom/nianticproject/ingress/common/j/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/badlogic/gdx/math/Matrix4;

.field private static final b:Lcom/badlogic/gdx/math/collision/Ray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/j/g;->a:Lcom/badlogic/gdx/math/Matrix4;

    .line 20
    new-instance v0, Lcom/badlogic/gdx/math/collision/Ray;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/collision/Ray;-><init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/g;->b:Lcom/badlogic/gdx/math/collision/Ray;

    return-void
.end method

.method public static a(FF)F
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 36
    const/high16 v0, 0x3f80

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/j/g;->b(FF)F

    move-result v0

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 37
    float-to-double v2, p1

    mul-double/2addr v2, v0

    .line 38
    mul-double/2addr v2, v2

    mul-double/2addr v0, v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 39
    double-to-float v0, v0

    return v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Vector3;F)F
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/f;->d()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/w/z;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->dst(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 49
    div-float v0, p2, v0

    .line 50
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/f;->g()F

    move-result v1

    .line 51
    const/high16 v2, 0x4000

    mul-float/2addr v2, v0

    float-to-double v2, v2

    const/high16 v4, 0x3f80

    mul-float/2addr v0, v0

    sub-float v0, v4, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    float-to-double v0, v1

    mul-double/2addr v0, v4

    div-double v0, v2, v0

    .line 52
    double-to-float v0, v0

    return v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/j/f;FF)Lcom/badlogic/gdx/math/collision/Ray;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    const/4 v6, 0x0

    .line 67
    sget-object v0, Lcom/nianticproject/ingress/common/j/g;->a:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/f;->d()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 68
    sget-object v0, Lcom/nianticproject/ingress/common/j/g;->a:Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/z;->b(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 73
    :cond_0
    sub-float v0, v2, p1

    mul-float/2addr v0, v3

    sub-float/2addr v0, v2

    .line 74
    mul-float v1, p2, v3

    sub-float/2addr v1, v2

    .line 78
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/f;->c()F

    move-result v2

    .line 79
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/f;->b()F

    move-result v3

    .line 80
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/f;->a()F

    move-result v4

    invoke-static {v4, v2}, Lcom/nianticproject/ingress/common/j/g;->b(FF)F

    move-result v4

    .line 82
    sget-object v5, Lcom/nianticproject/ingress/common/j/g;->b:Lcom/badlogic/gdx/math/collision/Ray;

    iget-object v5, v5, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6, v6, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    sget-object v6, Lcom/nianticproject/ingress/common/j/g;->a:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 85
    sget-object v5, Lcom/nianticproject/ingress/common/j/g;->b:Lcom/badlogic/gdx/math/collision/Ray;

    iget-object v5, v5, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    neg-float v6, v4

    mul-float/2addr v3, v6

    mul-float/2addr v0, v3

    mul-float/2addr v1, v4

    neg-float v2, v2

    invoke-virtual {v5, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/j/g;->a:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->rot(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 90
    sget-object v0, Lcom/nianticproject/ingress/common/j/g;->b:Lcom/badlogic/gdx/math/collision/Ray;

    goto :goto_0
.end method

.method private static b(FF)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    const/high16 v0, 0x3f00

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p1

    return v0
.end method
