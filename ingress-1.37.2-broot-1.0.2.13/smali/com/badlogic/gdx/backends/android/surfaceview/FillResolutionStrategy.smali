.class public Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calcMeasures(II)Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 28
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 30
    new-instance v2, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;-><init>(II)V

    return-object v2
.end method
