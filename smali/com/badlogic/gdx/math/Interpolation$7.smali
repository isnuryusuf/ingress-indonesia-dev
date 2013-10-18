.class final Lcom/badlogic/gdx/math/Interpolation$7;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(F)F
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 95
    mul-float v0, p1, p1

    sub-float v0, v2, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v2, v0

    return v0
.end method
