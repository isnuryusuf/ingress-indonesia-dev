.class public final Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public barPadding:F

.field public border:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public empty:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public highWater:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public lowWater:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
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
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;->border:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 171
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;->empty:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 172
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;->lowWater:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 173
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;->highWater:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 174
    iput p5, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;->barPadding:F

    .line 175
    return-void
.end method
