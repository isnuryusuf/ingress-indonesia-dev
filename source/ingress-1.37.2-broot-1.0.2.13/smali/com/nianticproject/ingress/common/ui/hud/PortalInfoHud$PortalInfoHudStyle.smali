.class public Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public addressLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public rangeLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public useRemotePortalViewStyle:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->useRemotePortalViewStyle:Z

    .line 325
    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 326
    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->addressLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 327
    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->rangeLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 330
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->useRemotePortalViewStyle:Z

    .line 325
    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 326
    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->addressLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 327
    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->rangeLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 333
    iget-boolean v0, p1, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->useRemotePortalViewStyle:Z

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->useRemotePortalViewStyle:Z

    .line 334
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 335
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->addressLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->addressLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 336
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->rangeLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud$PortalInfoHudStyle;->rangeLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 337
    return-void
.end method
