.class public final Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public barPaddingPx:F

.field public border:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public empty:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public heightDp:F

.field public highWater:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public lowWater:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;F)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->border:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 222
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->empty:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 223
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->lowWater:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 224
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->highWater:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 225
    iput p5, p0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->barPaddingPx:F

    .line 227
    return-void
.end method
