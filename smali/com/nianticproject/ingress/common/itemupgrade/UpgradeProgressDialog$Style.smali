.class public Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog$Style;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;-><init>()V

    .line 25
    const v0, 0x3f733333

    iput v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog$Style;->windowWidthPercent:F

    .line 26
    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog$Style;->windowHeightPercent:F

    .line 27
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->NONE:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog$Style;->close:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    .line 28
    return-void
.end method
