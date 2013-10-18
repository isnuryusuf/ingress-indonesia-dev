.class public Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;


# instance fields
.field private final ratio:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;->ratio:F

    .line 31
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    div-float v0, p1, p2

    iput v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;->ratio:F

    .line 35
    return-void
.end method


# virtual methods
.method public calcMeasures(II)Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 41
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 43
    iget v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;->ratio:F

    .line 44
    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 48
    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    .line 50
    int-to-float v0, v1

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 56
    :goto_0
    new-instance v2, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;

    invoke-direct {v2, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;-><init>(II)V

    return-object v2

    .line 53
    :cond_0
    int-to-float v1, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0
.end method
