.class public Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog$Style;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;-><init>()V

    .line 31
    const v0, 0x3f666666

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog$Style;->windowWidthPercent:F

    .line 32
    const v0, 0x3e6147ae

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog$Style;->windowHeightPercent:F

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog$Style;->windowAlignment:I

    .line 34
    const/high16 v0, 0x4270

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog$Style;->padBottom:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog$Style;->touchOutsideToClose:Z

    .line 36
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->X:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog$Style;->close:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    .line 37
    return-void
.end method
