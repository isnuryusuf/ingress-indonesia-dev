.class public Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public caliperCount:I

.field public defaultCaliperRadius:F

.field public defaultColor:Lcom/badlogic/gdx/graphics/Color;

.field public defaultMarkerRadius:F

.field public defaultMarkerWidth:F

.field public deselectionSpeed:F

.field public markerRotationRad:F

.field public markerSlices:I

.field public selectedCaliperRadius:F

.field public selectedColor:Lcom/badlogic/gdx/graphics/Color;

.field public selectedMarkerRadius:F

.field public selectedMarkerWidth:F

.field public selectionSpeed:F

.field public wedgeExtentRad:F

.field public wedgeOffsetRad:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->defaultColor:Lcom/badlogic/gdx/graphics/Color;

    .line 248
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedColor:Lcom/badlogic/gdx/graphics/Color;

    .line 251
    const v0, 0x3e088889

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectionSpeed:F

    .line 252
    const v0, 0x3e6eeeef

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->deselectionSpeed:F

    .line 255
    const/4 v0, 0x3

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->markerSlices:I

    .line 256
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->c()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->markerRotationRad:F

    .line 260
    const v0, 0x3bf5c290

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedMarkerRadius:F

    .line 261
    const v0, 0x3ccccccd

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->defaultMarkerRadius:F

    .line 263
    const v0, 0x3c0f5c29

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedMarkerWidth:F

    .line 264
    const v0, 0x3c8f5c29

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->defaultMarkerWidth:F

    .line 267
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedCaliperRadius:F

    .line 268
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->defaultCaliperRadius:F

    .line 271
    const/4 v0, 0x4

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->caliperCount:I

    .line 274
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->d()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->wedgeExtentRad:F

    .line 275
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->e()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->wedgeOffsetRad:F

    return-void
.end method
