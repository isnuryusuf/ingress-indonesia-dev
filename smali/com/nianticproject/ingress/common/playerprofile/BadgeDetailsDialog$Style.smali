.class Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog$Style;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 21
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;-><init>()V

    .line 22
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog$Style;->windowWidthPercent:F

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog$Style;->windowHeightPercent:F

    .line 24
    iput v1, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog$Style;->windowAlignment:I

    .line 25
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/PlayerProfileStyles;->BADGE_DETAILS_DIALOG_CLOSE_STYLE:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog$Style;->close:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    .line 26
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog$Style;->touchOutsideToClose:Z

    .line 27
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog$Style;->shrinkHeightToFit:Z

    .line 28
    return-void
.end method
