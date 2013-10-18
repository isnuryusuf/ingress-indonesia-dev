.class public final Lcom/nianticproject/ingress/common/scanner/modes/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/ar;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/j/ap;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/badlogic/gdx/math/Vector3;FFFFF)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/nianticproject/ingress/common/j/ap;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/j/ap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bz;->a:Lcom/nianticproject/ingress/common/j/ap;

    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bz;->a:Lcom/nianticproject/ingress/common/j/ap;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/scanner/modes/j;->a(Lcom/nianticproject/ingress/common/j/ap;)Lcom/nianticproject/ingress/common/j/ap;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    iget v3, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 41
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bz;->a:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    .line 42
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bz;->a:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 46
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bz;->a:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    neg-float v3, p3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 51
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bz;->a:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    const v3, 0x3d4ccccd

    mul-float/2addr v3, p3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 55
    invoke-static {p3, p4, p6}, Lcom/nianticproject/ingress/common/scanner/modes/bz;->a(FFF)F

    move-result v0

    .line 56
    invoke-static {p3, p4, p5}, Lcom/nianticproject/ingress/common/scanner/modes/bz;->a(FFF)F

    move-result v2

    mul-float/2addr v2, p7

    .line 58
    sget-object v3, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 60
    iput v0, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bz;->a:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bz;->a:Lcom/nianticproject/ingress/common/j/ap;

    iput p4, v0, Lcom/nianticproject/ingress/common/j/ap;->a:F

    .line 65
    return-void
.end method

.method private static a(FFF)F
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    neg-float v0, p2

    mul-float/2addr v0, p0

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-double v1, p1

    const-wide v3, 0x400921fb54442d18L

    mul-double/2addr v1, v3

    const-wide v3, 0x4076800000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    .line 84
    return v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/j/ap;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bz;->a:Lcom/nianticproject/ingress/common/j/ap;

    return-object v0
.end method
