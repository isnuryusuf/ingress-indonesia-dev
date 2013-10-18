.class public Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public heightInDips:F

.field public widthInDips:F

.field public xRelativeToScreenWidth:F

.field public yRelativeToScreenHeight:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;)V
    .locals 1
    .parameter

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iget v0, p1, Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;->xRelativeToScreenWidth:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;->xRelativeToScreenWidth:F

    .line 292
    iget v0, p1, Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;->yRelativeToScreenHeight:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;->yRelativeToScreenHeight:F

    .line 293
    iget v0, p1, Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;->widthInDips:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;->widthInDips:F

    .line 294
    iget v0, p1, Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;->heightInDips:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;->heightInDips:F

    .line 295
    return-void
.end method
