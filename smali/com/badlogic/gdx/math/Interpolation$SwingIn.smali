.class public Lcom/badlogic/gdx/math/Interpolation$SwingIn;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "SourceFile"


# instance fields
.field private final scale:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 376
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$SwingIn;->scale:F

    .line 377
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 3
    .parameter

    .prologue
    .line 380
    mul-float v0, p1, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$SwingIn;->scale:F

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$SwingIn;->scale:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method
