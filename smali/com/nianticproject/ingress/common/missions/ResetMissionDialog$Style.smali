.class Lcom/nianticproject/ingress/common/missions/ResetMissionDialog$Style;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;-><init>()V

    .line 17
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->NONE:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/ResetMissionDialog$Style;->close:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/nianticproject/ingress/common/missions/ResetMissionDialog$Style;->windowAlignment:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/ResetMissionDialog$Style;->shrinkHeightToFit:Z

    .line 20
    const v0, 0x3f70a3d7

    iput v0, p0, Lcom/nianticproject/ingress/common/missions/ResetMissionDialog$Style;->windowWidthPercent:F

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/missions/ResetMissionDialog$Style;->windowHeightPercent:F

    .line 22
    const-string/jumbo v0, "portalInvalid"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/ResetMissionDialog$Style;->windowStyleName:Ljava/lang/String;

    .line 23
    const/16 v0, 0x64

    iput v0, p0, Lcom/nianticproject/ingress/common/missions/ResetMissionDialog$Style;->padTop:I

    .line 24
    return-void
.end method
