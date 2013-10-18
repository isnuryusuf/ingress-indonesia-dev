.class public Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public centerOnSelection:Z

.field public curveFalloff:F

.field public flingTimeS:F

.field public hScroll:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public hScrollBarHeightDp:Ljava/lang/Integer;

.field public hScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public hScrollKnobHeightDp:Ljava/lang/Integer;

.field public hScrollKnobWidthDp:Ljava/lang/Integer;

.field public keepActorsInside:Z

.field public leftButton:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public rightButton:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public scrollSpeedScalar:F

.field public useScissor:Z

.field public widgetAlpha:F

.field public widgetOverdraw:F

.field public widgetScaling:F

.field public widgetsPerSide:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    const/4 v0, 0x2

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetsPerSide:I

    .line 989
    const v0, 0x3f19999a

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetOverdraw:F

    .line 990
    const/high16 v0, 0x3f40

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetScaling:F

    .line 991
    const v0, 0x3ea8f5c3

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetAlpha:F

    .line 992
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->curveFalloff:F

    .line 993
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->flingTimeS:F

    .line 994
    const v0, 0x3f8ccccd

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->scrollSpeedScalar:F

    .line 995
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->centerOnSelection:Z

    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->keepActorsInside:Z

    .line 997
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->useScissor:Z

    .line 1007
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    const/4 v0, 0x2

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetsPerSide:I

    .line 989
    const v0, 0x3f19999a

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetOverdraw:F

    .line 990
    const/high16 v0, 0x3f40

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetScaling:F

    .line 991
    const v0, 0x3ea8f5c3

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetAlpha:F

    .line 992
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->curveFalloff:F

    .line 993
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->flingTimeS:F

    .line 994
    const v0, 0x3f8ccccd

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->scrollSpeedScalar:F

    .line 995
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->centerOnSelection:Z

    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->keepActorsInside:Z

    .line 997
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->useScissor:Z

    .line 1010
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 1011
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScroll:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 1012
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 1013
    return-void
.end method


# virtual methods
.method public setFalloffCurve(F)Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;
    .locals 1
    .parameter

    .prologue
    .line 1039
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 1040
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->curveFalloff:F

    .line 1041
    return-object p0

    .line 1039
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFlingTimeS(F)Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;
    .locals 1
    .parameter

    .prologue
    .line 1045
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 1046
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->flingTimeS:F

    .line 1047
    return-object p0

    .line 1045
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImagesPerSide(I)Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;
    .locals 1
    .parameter

    .prologue
    .line 1016
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 1017
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetsPerSide:I

    .line 1018
    return-object p0

    .line 1016
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollSpeedScalar(F)Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;
    .locals 0
    .parameter

    .prologue
    .line 1051
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->scrollSpeedScalar:F

    .line 1052
    return-object p0
.end method

.method public setWidgetAlpha(F)Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;
    .locals 1
    .parameter

    .prologue
    .line 1033
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 1034
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetAlpha:F

    .line 1035
    return-object p0

    .line 1033
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWidgetOverdraw(F)Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;
    .locals 1
    .parameter

    .prologue
    .line 1022
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 1023
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetOverdraw:F

    .line 1024
    return-object p0

    .line 1022
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWidgetScaling(F)Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;
    .locals 0
    .parameter

    .prologue
    .line 1028
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetScaling:F

    .line 1029
    return-object p0
.end method
