.class public final Lcom/nianticproject/ingress/common/ui/widget/ProgressBar$ProgressBarStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public border:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public empty:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public full:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public smoothGrowRate:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;F)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar$ProgressBarStyle;->border:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 230
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar$ProgressBarStyle;->empty:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 231
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar$ProgressBarStyle;->full:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 232
    iput p4, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar$ProgressBarStyle;->smoothGrowRate:F

    .line 233
    return-void
.end method
