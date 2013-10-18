.class public Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public close:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

.field public fullModal:Z

.field public padBottom:I

.field public padLeft:I

.field public padRight:I

.field public padTop:I

.field public shrinkHeightToFit:Z

.field public touchInsideToClose:Z

.field public touchOutsideToClose:Z

.field public windowAlignment:I

.field public windowHeightPercent:F

.field public windowStyleName:Ljava/lang/String;

.field public windowWidthPercent:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v0, 0x3f4ccccd

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->windowWidthPercent:F

    .line 84
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->windowHeightPercent:F

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->windowAlignment:I

    .line 89
    iput v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->padLeft:I

    .line 90
    iput v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->padRight:I

    .line 91
    iput v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->padTop:I

    .line 92
    iput v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->padBottom:I

    .line 94
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;->OK:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->close:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$CloseStyle;

    .line 96
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->touchOutsideToClose:Z

    .line 97
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->touchInsideToClose:Z

    .line 98
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->shrinkHeightToFit:Z

    .line 104
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->fullModal:Z

    .line 109
    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;->windowStyleName:Ljava/lang/String;

    return-void
.end method
