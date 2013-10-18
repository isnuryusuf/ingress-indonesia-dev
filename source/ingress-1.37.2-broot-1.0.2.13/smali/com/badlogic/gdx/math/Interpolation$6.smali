.class final Lcom/badlogic/gdx/math/Interpolation$6;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(F)F
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    .line 83
    const/high16 v0, 0x3f00

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 84
    mul-float v0, p1, v3

    .line 85
    mul-float/2addr v0, v0

    sub-float v0, v2, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v2, v0

    div-float/2addr v0, v3

    .line 89
    :goto_0
    return v0

    .line 87
    :cond_0
    sub-float v0, p1, v2

    .line 88
    mul-float/2addr v0, v3

    .line 89
    mul-float/2addr v0, v0

    sub-float v0, v2, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, v2

    div-float/2addr v0, v3

    goto :goto_0
.end method
