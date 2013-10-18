.class public Lcom/nianticproject/ingress/common/ui/elements/MissionReminderDialog$Style;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;-><init>()V

    .line 26
    const v0, 0x3f666666

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/MissionReminderDialog$Style;->windowWidthPercent:F

    .line 27
    const v0, 0x3f428f5c

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/MissionReminderDialog$Style;->windowHeightPercent:F

    .line 28
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->NONE:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/MissionReminderDialog$Style;->close:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    .line 29
    return-void
.end method
