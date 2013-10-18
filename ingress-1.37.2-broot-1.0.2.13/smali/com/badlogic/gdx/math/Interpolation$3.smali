.class final Lcom/badlogic/gdx/math/Interpolation$3;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(F)F
    .locals 2
    .parameter

    .prologue
    .line 57
    const/high16 v0, 0x3f80

    const v1, 0x40490fdb

    mul-float/2addr v1, p1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method
