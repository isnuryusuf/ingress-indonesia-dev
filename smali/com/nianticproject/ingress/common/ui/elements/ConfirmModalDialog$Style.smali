.class public Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog$Style;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;-><init>()V

    .line 31
    const v0, 0x3f733333

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog$Style;->windowWidthPercent:F

    .line 32
    const v0, 0x3eb33333

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog$Style;->windowHeightPercent:F

    .line 33
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->NONE:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog$Style;->close:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    .line 34
    return-void
.end method
