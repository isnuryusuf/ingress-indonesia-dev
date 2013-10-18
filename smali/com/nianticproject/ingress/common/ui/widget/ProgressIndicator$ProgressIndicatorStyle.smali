.class public final Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public inner:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public innerTime:F

.field public outer:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public outerTime:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x4000

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;->innerTime:F

    .line 115
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;->outerTime:F

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FLcom/badlogic/gdx/graphics/g2d/TextureRegion;F)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x4000

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;->innerTime:F

    .line 115
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;->outerTime:F

    .line 122
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;->inner:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 123
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;->outer:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 124
    iput p2, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;->innerTime:F

    .line 125
    iput p4, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;->outerTime:F

    .line 127
    cmpl-float v0, p2, v1

    if-eqz v0, :cond_0

    cmpl-float v0, p4, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Rotation times must be non-zero"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 129
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
